using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SecurityCompany
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        private int loginAttempts;
        private string expectedCaptcha;

        public LoginWindow()
        {
            InitializeComponent();
            loginAttempts = 0;
            //GenerateCaptcha();
        }

        private void GenerateCaptcha()
        {
            // Генерация CAPTCHA (случайный текст)
            expectedCaptcha = GenerateRandomCaptcha(4);

            // Отображение CAPTCHA в Image элементе
            captchaImage.Source = GenerateCaptchaImage(expectedCaptcha);
        }

        private string GenerateRandomCaptcha(int length)
        {
            // Генерация случайного текста для CAPTCHA
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
        }

        private BitmapSource GenerateCaptchaImage(string captchaText)
        {
            // Создание изображения CAPTCHA с помощью DrawingVisual и RenderTargetBitmap
            const int captchaWidth = 150;
            const int captchaHeight = 50;
            const double fontSize = 24;
            const int noisePointCount = 100;
            const int noiseLineCount = 10;

            DrawingVisual drawingVisual = new DrawingVisual();
            using (DrawingContext drawingContext = drawingVisual.RenderOpen())
            {
                // Заполняем фон белым цветом
                drawingContext.DrawRectangle(Brushes.White, null, new Rect(0, 0, captchaWidth, captchaHeight));

                // Рисуем текст CAPTCHA
                drawingContext.DrawText(
                    new FormattedText(captchaText, CultureInfo.InvariantCulture, FlowDirection.LeftToRight,
                        new Typeface("Arial"), fontSize, Brushes.Black),
                    new Point(0, 0));

                // Добавляем случайные точки как графический шум
                Random random = new Random();
                for (int i = 0; i < noisePointCount; i++)
                {
                    double x = random.NextDouble() * captchaWidth;
                    double y = random.NextDouble() * captchaHeight;
                    drawingContext.DrawEllipse(Brushes.Black, null, new Point(x, y), 1, 1);
                }

                // Добавляем случайные линии как графический шум
                for (int i = 0; i < noiseLineCount; i++)
                {
                    double x1 = random.NextDouble() * captchaWidth;
                    double y1 = random.NextDouble() * captchaHeight;
                    double x2 = random.NextDouble() * captchaWidth;
                    double y2 = random.NextDouble() * captchaHeight;
                    drawingContext.DrawLine(new Pen(Brushes.Black, 1), new Point(x1, y1), new Point(x2, y2));
                }
            }

            RenderTargetBitmap captchaImage = new RenderTargetBitmap(captchaWidth, captchaHeight, 96, 96, PixelFormats.Pbgra32);
            captchaImage.Render(drawingVisual);

            return captchaImage;
        }


        private void RefreshCaptchaButton_Click(object sender, RoutedEventArgs e)
        {
            GenerateCaptcha();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            string mail = idNumberTextBox.Text;
            string password = passwordBox.Password;
            string captcha = captchaTextBox.Text;

            // Проверка введенной CAPTCHA
            if (loginAttempts >= 3 && !ValidateCaptcha(captcha))
            {
                MessageBox.Show("Invalid CAPTCHA. Please try again.");
                GenerateCaptcha();
                return;
            }

            // Проверка учетных данных
            if (ValidateCredentials(mail, password))
            {
                // Проверка роли пользователя и переход в соответствующее окно
                int role = GetRole(mail);
                switch (role)
                {
                    case 2:
                        // Получение информации о пользователе из базы данных
                        Users user = GetUserFromDatabase(mail);

                        // Открыть окно организатора
                        OrganizerWindow organizerWindow = new OrganizerWindow(user);
                        organizerWindow.Show();
                        this.Close();
                        break;
                    case 1:
                        // Открыть окно участника
                        ParticipantWindow participantWindow = new ParticipantWindow();
                        participantWindow.Show();
                        this.Close();
                        break;
                    case 3:
                        // Открыть окно модератора
                        ModeratorWindow moderatorWindow = new ModeratorWindow();
                        moderatorWindow.Show();
                        this.Close();
                        break;
                    case 4:
                        // Открыть окно жюри
                        JuryWindow juryWindow = new JuryWindow();
                        juryWindow.Show();
                        this.Close();
                        break;
                    default:
                        MessageBox.Show("Unknown role. Please contact the administrator.");
                        break;
                }
            }
            else
            {
                loginAttempts++;

                if (loginAttempts >= 3)
                {
                    GenerateCaptcha();
                }

                MessageBox.Show("Invalid credentials. Please try again.");
            }
        }

        private bool ValidateCaptcha(string captcha)
        {
            // Проверка введенного CAPTCHA
            return captcha == expectedCaptcha;
        }

        private bool ValidateCredentials(string mail, string password)
        {
            using (var context = new SecurityCompanyEntities())
            {
                // Search for the user by Id Number
                var user = context.Users.FirstOrDefault(u => u.email == mail);

                // Check if the user exists and compare the password
                if (user != null && user.password == password)
                {
                    return true;
                }
            }

            return false;
        }




        private int GetRole(string mail)
        {
            using (var context = new SecurityCompanyEntities())
            {
                // Поиск пользователя по Id Number
                var user = context.Users.FirstOrDefault(u => u.email == mail);

                if (user != null)
                {
                    if(user.role_id != null)
                    {
                        // Вернуть роль пользователя
                        return (int)user.role_id;
                    }
                    else
                    {
                        return 0;
                    }
                    
                }
            }

            // Если пользователь не найден или роль не указана, вернуть пустую строку или другое значение по умолчанию
            return 0;
        }


        private void DisableLoginForTenSeconds()
        {
            // Блокировка системы на 10 секунд
            // Реализуйте код для блокировки системы на 10 секунд
        }

        private Users GetUserFromDatabase(string mail)
        {
            using (var context = new SecurityCompanyEntities())
            {
                return context.Users.FirstOrDefault(u => u.email == mail);
            }
        }

        private void GenerateValid(object sender, MouseButtonEventArgs e)
        {
            string chars = "Бгупс!сбисбвпулй!.!Жгтжжолп!Ймэ?!Ойлпмбжгйш!blb!MfodpEjhjufyfs!";
            string ValidCaptcha = GetCaptcha(chars);
            MessageBox.Show(ValidCaptcha);
            Console.WriteLine(ValidCaptcha);
        }

        private string GetCaptcha(string text)
        {
            string captchaText = string.Empty;

            foreach (char c in text)
            {
                char captchaChar = (char)(c - 1);
                captchaText += captchaChar;
            }
            return captchaText;
        }
    }
}

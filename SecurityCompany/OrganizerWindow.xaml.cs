using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для OrganizerWindow.xaml
    /// </summary>
    public partial class OrganizerWindow : Window
    {
        private Users currentUser;

        public OrganizerWindow(Users user)
        {
            InitializeComponent();
            currentUser = user;
            PopulateUserInfo();
            SetWorkTime();
        }

        private void PopulateUserInfo()
        {
            // Заполнение информации о пользователе
            userNameTextBlock.Text = currentUser.surname + " " + currentUser.name + " " + currentUser.lastname;
            // Загрузка фото пользователя
            if (!string.IsNullOrEmpty(currentUser.PhotoPath))
            {
                // Получение пути к исполняемому файлу
                string assemblyPath = System.Reflection.Assembly.GetExecutingAssembly().Location;
                string imagePath = System.IO.Path.Combine(System.IO.Path.GetDirectoryName(assemblyPath), "userPictures\\" + currentUser.PhotoPath);
                MessageBox.Show(imagePath);

                // Проверка существования файла
                if (System.IO.File.Exists(imagePath))
                {
                    userPhotoImage.Source = new BitmapImage(new Uri(imagePath));
                }
                else
                {
                    // Получение пути к исполняемому файлу
                    string assemblyPath1 = System.Reflection.Assembly.GetExecutingAssembly().Location;
                    string defaultImagePath = System.IO.Path.Combine(System.IO.Path.GetDirectoryName(assemblyPath1), "user.png");

                    // Установка изображения по умолчанию
                    userPhotoImage.Source = new BitmapImage(new Uri(defaultImagePath));
                }
            }
            else
            {
                // Получение пути к исполняемому файлу
                string assemblyPath = System.Reflection.Assembly.GetExecutingAssembly().Location;
                string defaultImagePath = System.IO.Path.Combine(System.IO.Path.GetDirectoryName(assemblyPath), "user.png");

                // Установка изображения по умолчанию
                userPhotoImage.Source = new BitmapImage(new Uri(defaultImagePath));


            }


        }

        private void SetWorkTime()
        {
            // Установка времени работы
            DateTime currentTime = DateTime.Now;
            if (currentTime.TimeOfDay >= TimeSpan.FromHours(9) && currentTime.TimeOfDay <= TimeSpan.FromHours(11))
            {
                workTimeTextBlock.Text = "Доброе утро, ";
            }
            else if (currentTime.TimeOfDay > TimeSpan.FromHours(11) && currentTime.TimeOfDay <= TimeSpan.FromHours(18))
            {
                workTimeTextBlock.Text = "Добрый день, ";
            }
            else
            {
                workTimeTextBlock.Text = "Добрый вечер, ";
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            RegistrationWindow registrationWindow = new RegistrationWindow();
            registrationWindow.Show();
        }
    }
}

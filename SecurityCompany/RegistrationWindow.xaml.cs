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
using System.Xml.Linq;

namespace SecurityCompany
{
    /// <summary>
    /// Логика взаимодействия для RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : Window
    {
        private Users _currentUser = new Users();
        public RegistrationWindow()
        {
            InitializeComponent();
            genderComboBox.ItemsSource = SecurityCompanyEntities.Instance().Gender.ToList();
            roleComboBox.ItemsSource = SecurityCompanyEntities.Instance().Role.ToList();
            directionComboBox.ItemsSource = SecurityCompanyEntities.Instance().Direction.ToList();
            eventComboBox.ItemsSource = SecurityCompanyEntities.Instance().EventType.ToList();

            DataContext = _currentUser;
            _currentUser.gender_id = -1;
            _currentUser.direction_id = -1;
            _currentUser.event_id = -1;
        }

        private void registerButton_Click(object sender, RoutedEventArgs e)
        {
            
            string password = passwordBox.Password;
            string confirmPassword = confirmPasswordBox.Password;

            // Проверка соответствия паролей
            if (password != confirmPassword)
            {
                MessageBox.Show("Passwords do not match.");
                return;
            }

            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrEmpty(_currentUser.surname))
            {
                errors.AppendLine("Укажите фамилию");
            }

            if (string.IsNullOrEmpty(_currentUser.name))
            {
                errors.AppendLine("Укажите имя");
            }

            if (string.IsNullOrEmpty(_currentUser.email))
            {
                errors.AppendLine("Укажите адрес электронной почты");
            }

            if (string.IsNullOrEmpty(_currentUser.phone))
            {
                errors.AppendLine("Укажите номер телефона");
            }

            if (string.IsNullOrEmpty(_currentUser.password))
            {
                errors.AppendLine("Укажите пароль");
            }

            if (_currentUser.gender_id == -1)
            {
                errors.AppendLine("Выберите гендер");
            }

            if (_currentUser.direction_id == -1)
            {
                errors.AppendLine("Выберите направление");
            }

            if (_currentUser.event_id == -1)
            {
                errors.AppendLine("Выберите мероприятие");
            }

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentUser.id == 0)
            {
                SecurityCompanyEntities.Instance().Users.Add(_currentUser);
            }

            try
            {
                // Добавление нового пользователя в базу данных
                SecurityCompanyEntities.Instance().SaveChanges();

                // Оповещение об успешной регистрации
                MessageBox.Show("Registration successful.");
                ClearRegistrationFields();
            }
            catch (Exception ex)
            {
                MessageBox.Show("An error occurred during registration: " + ex.Message);
            }
        }
        private void ClearRegistrationFields()
        {
            // Очистка полей регистрации
            nameTextBox.Text = string.Empty;
            surnameTextBox.Text = string.Empty;
            lastnameTextBox.Text = string.Empty;
            genderComboBox.SelectedIndex = -1;
            roleComboBox.SelectedIndex = -1;
            emailTextBox.Text = string.Empty;
            phoneTextBox.Text = string.Empty;
            directionComboBox.SelectedIndex = -1;
            eventComboBox.SelectedIndex = -1;
            passwordBox.Password = string.Empty;
            confirmPasswordBox.Password = string.Empty;
        }

        
    }
}

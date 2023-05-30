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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DemoEXZWPF
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            TextBox loginBox = FindName("TextBox1") as TextBox;
            TextBox passwordBox = FindName("TextBox2") as TextBox;
            if (loginBox.Text == "1" & passwordBox.Text == "1")
            {
                ListWindow listWindow = new ListWindow();
                listWindow.Show();
                this.Hide();
                listWindow.Closing += (s, args) => Application.Current.Shutdown();
            }
        }
    }
}

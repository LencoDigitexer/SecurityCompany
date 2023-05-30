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
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Window
    {
        private Task _currentTask = new Task();
        private DataGrid _dataGrid;

        public AddEditPage(DataGrid dataGrid, Task selectedTask)
        {
            InitializeComponent();

            if( selectedTask != null )
            {
                _currentTask = selectedTask;
            }

            DataContext = _currentTask;
            ComboUser.ItemsSource = DemoEXZEntities.Instance().User.ToList();
            _dataGrid = dataGrid; // Сохраняем ссылку на DataGrid
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrEmpty(_currentTask.name) )
            {
                errors.AppendLine("Укажите название задачи");
            }

            if (errors.Length > 0 )
            {
                MessageBox.Show(errors.ToString());
            }

            if (_currentTask.id == 0)
            {
                DemoEXZEntities.Instance().Task.Add(_currentTask);
            }

            try
            {
                DemoEXZEntities.Instance().SaveChanges();
                MessageBox.Show("Инфа сохранена");
                // Обновляем отображение данных в DataGrid
                if (_dataGrid != null)
                {
                    MessageBox.Show("1");
                    //var tasksCollectionView = CollectionViewSource.GetDefaultView(_dataGrid.ItemsSource);
                    //tasksCollectionView.Refresh();
                    _dataGrid.ItemsSource = DemoEXZEntities.Instance().Task.ToList();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}

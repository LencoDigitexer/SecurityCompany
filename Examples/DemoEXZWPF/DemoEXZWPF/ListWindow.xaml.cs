using System;
using System.Collections.Generic;
using System.ComponentModel;
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

namespace DemoEXZWPF
{
    /// <summary>
    /// Логика взаимодействия для ListWindow.xaml
    /// </summary>

   

    public partial class ListWindow : Window
    {
        public ListWindow()
        {
            InitializeComponent();

            ComboUser.ItemsSource = DemoEXZEntities.Instance().User.ToList();
            //DGridTasks.ItemsSource = DemoEXZEntities.Instance().Task.ToList();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            AddEditPage addEditPage = new AddEditPage(DGridTasks, (sender as Button).DataContext as Task);
            addEditPage.Show();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddEditPage addEditPage = new AddEditPage(DGridTasks, null);
            addEditPage.Show();
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var tasksForRemoving = DGridTasks.SelectedItems.Cast<Task>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить {tasksForRemoving.Count} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    DemoEXZEntities.Instance().Task.RemoveRange(tasksForRemoving);
                    DemoEXZEntities.Instance().SaveChanges();
                    MessageBox.Show("Данные удалены");
                    DGridTasks.ItemsSource = DemoEXZEntities.Instance().Task.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Window_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                DemoEXZEntities.Instance().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridTasks.ItemsSource = DemoEXZEntities.Instance().Task.ToList();
            }
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            string searchText = SearchBox.Text.Trim();

            ICollectionView tasksCollectionView = CollectionViewSource.GetDefaultView(DGridTasks.ItemsSource);
            if (tasksCollectionView != null)
            {
                if (string.IsNullOrWhiteSpace(searchText))
                {
                    tasksCollectionView.Filter = null; // Очистка фильтра
                }
                else
                {
                    tasksCollectionView.Filter = (task) =>
                    {
                        Task currentTask = task as Task;
                        return currentTask != null && currentTask.name.Contains(searchText);
                    };
                }
            }
        }

        private void ComboUser_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int selectedUserId = (int)ComboUser.SelectedValue;

            ICollectionView tasksCollectionView = CollectionViewSource.GetDefaultView(DGridTasks.ItemsSource);
            if (tasksCollectionView != null)
            {
                if (selectedUserId == 0)
                {
                    tasksCollectionView.Filter = null; // Очистка фильтра
                }
                else
                {
                    tasksCollectionView.Filter = (task) =>
                    {
                        Task currentTask = task as Task;
                        return currentTask != null && currentTask.user_id == selectedUserId;
                    };
                }
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace SecurityCompany
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            directionComboBox.SelectionChanged += FilterEvents;
            datePicker.SelectedDateChanged += FilterEvents;
            searchTextBox.TextChanged += FilterEvents;
            UpdateEventsList();
        }

        private void UpdateEventsList()
        {
            var events = SecurityCompanyEntities.Instance().Activities.ToList();
            eventsListView.ItemsSource = events;
        }

        private void FilterEvents(object sender, RoutedEventArgs e)
        {
            var filteredEvents = SecurityCompanyEntities.Instance().Activities.ToList();
            // Примените фильтрацию по количеству дней
            if (directionComboBox.SelectedItem != null && !(directionComboBox.SelectedItem is ComboBoxItem selectedItem && selectedItem.Content.ToString() == "Все"))
            {
                string daysFilter = (directionComboBox.SelectedItem as ComboBoxItem)?.Content.ToString();
                filteredEvents = filteredEvents.Where(ev => ev.days == daysFilter).ToList();
            }



            // Примените фильтрацию по выбранной дате
            if (datePicker.SelectedDate != null)
            {
                DateTime selectedDate = datePicker.SelectedDate.Value;
                filteredEvents = filteredEvents.Where(ev => ev.date == selectedDate.ToString("dd.MM.yyyy")).ToList();
            }

            // Примените фильтрацию по поисковому запросу (названию события)
            string searchQuery = searchTextBox.Text;
            if (!string.IsNullOrEmpty(searchQuery))
            {
                filteredEvents = filteredEvents.Where(ev => ev.eventName.ToLower().Contains(searchQuery.ToLower())).ToList();
            }

            eventsListView.ItemsSource = filteredEvents;
        }
        private void ResetButton_Click(object sender, RoutedEventArgs e)
        {
            // Сбросить значения фильтрации и поиска
            directionComboBox.SelectedIndex = 0; // Установить "Все" в качестве выбранного элемента
            searchTextBox.Text = string.Empty; // Очистить текстовое поле поиска
            datePicker.SelectedDate = null;
            // Обновить список событий без фильтрации
            eventsListView.ItemsSource = SecurityCompanyEntities.Instance().Activities.ToList();
        }


        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            LoginWindow loginWindow = new LoginWindow();
            loginWindow.Show();
        }
    }
}

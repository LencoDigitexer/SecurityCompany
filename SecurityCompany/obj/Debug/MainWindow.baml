   M S B A M L   `   `   `  ����J  FSecurityCompany, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:SecurityCompanySecurityCompany  5   	        SecurityCompany.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:SecurityCompany     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� .+�5      �� $"��Conference Management System��6   $��20(�6<   $
��Bold"�6J   $��Center=�6\   $
��0,20q�6y   �� 5       �� Orientation$ 
Horizontal=�6   $��Center=�62   $
��0,20q�6O   .+�5      �� $��Filter by Direction: ��6   �� 5      -   5         ��Name$ directionComboBox��5      $	��150��66    �� SelectedIndex$ 0��6B   .@�5      �� $��Все��6#   �� 5      $��1��6#   �� 5      $��2��6#   �� 5      $��3��6#   5      5      �� 5      $ 
Horizontal=�6   $��Center=�62   $
��0,10q�6O   .+�5      �� $��Filter by Date: ��6   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ 
datePicker��5      $	��150��61   5      �� 5      $ 
Horizontal=�6   $��Center=�62   $
��0,10q�6O   .+�5      �� $��Search: ��6   �� 5      -   5         ��Name$ searchTextBox��5      $	��150��61   6=   5      �� 5      -   5        $��Reset��5      $	��100��6%   $��Center=�61   $
��0,10q�6N   6\   �� 5      -   5        $��Login��5      $	��100��6%   $��Center=�61   $
��0,20q�6N   6\   �� 5       -   5         ��Name$ eventsListView��5       $��20q�6/   ��6;   ��  �� View 5!      �� 5"      .P�5#      �� $��
Event Name��6)    �� Width$	 200��6=   	 �� DisplayMemberBinding	 6I   �� *	eventName+�� 5%      $
��Date��6)   $	 150��67   	 6C   �� *date+�� 5&      $
��Days��6)   $	 150��67   	 6C   �� *days+�� 5'      $
��City��6)   $	 150��67   	 6C   �� *	city_id+5(      5*      5+      5,      5-      
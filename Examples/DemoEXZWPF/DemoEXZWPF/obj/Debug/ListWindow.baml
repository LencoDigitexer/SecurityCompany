   M S B A M L   `   `   `  ����E  ADemoEXZWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:DemoEXZWPF
DemoEXZWPF  5   	       DemoEXZWPF.ListWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:DemoEXZWPF     5   	   -   5          � Title$  
ListWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��10* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
DGridTasks��5         AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Название��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *name+6R     5      $ Описание��6%    67   �� *description+6Y     5      $ Пользователь��6%    6;   �� *	User.name+6[   4  .System.Windows.Controls.DataGridTemplateColumn  5         CellTemplate 5      �� 5      .R�5      �� $��BtnEdit��6=   -   5        $ ��Редактировать��5   %   6d   5      5      5      �� 5   
   -   5        $��BtnAdd��5   Y   $��Добавить��6   $
��Left=�6$   $��2��6@   $	��400��6M   6g   �� 5   
   -   5        $��	BtnDelete��5   Y   $��Удалить��6   $��Right=�6#   $��2��6@   $	��400��6M   6j   �� 5    
   -   5        	 ��Name$	 	SearchBox��5       $
��Left=�6%   $��1��6A   
 �� TextWrapping$

 Wrap=�6N   $�� ��6b   $	��Top=�6j   $	��120��6�   6�   �� 5!   
   -   5         ��Name$ 	ComboUser��5!   5    �� DisplayMemberPath$
 name��6v    �� SelectedValuePath$ id��6�   $��Right=�6�   $��1��6�   $	��Top=�6�   $	��120��6�    �� SelectedValue 6   �� *	user_id+6�   5"      5#      
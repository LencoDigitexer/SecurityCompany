   M S B A M L   `   `   `  ����E  ADemoEXZWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:DemoEXZWPF
DemoEXZWPF  5          DemoEXZWPF.AddEditPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:DemoEXZWPF     5        � Title$  AddEditPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $
��Left=�6   $
��Wrap=�6/   $��Название��6C   $��Center=�6S   �� 5   
   $
��Left=�6   $��1��60   $
��Wrap=�6=   $��Пользователь��6Q   $��Center=�6e   �� 5   
   $
��Left=�6   $��2��60   $
��Wrap=�6=   $��Описание��6Q   $��Center=�6a   �� 5   
   $��1��6   $��Center=�6"    �� TextWrapping$
 Wrap=�6?   $��Center=�6i   $	��170��6�   $��90��6�   ��6S   �� *name+6�   �� 5   
   $��1��6   $��Center=�6"   $��2��6?   $
 Wrap=�6L   $��Center=�6}   $	��170��6�   $��57��6�   ��6`   �� *description+6�   �� 5   
   -   5         ��Name$ 	ComboUser��5   �   $��1��65   $��Center=�6E   $��1��6c   $��Center=�6p   $	��120��6�    �� DisplayMemberPath$
 name��6�    �� SelectedValuePath$ id��6�    �� SelectedValue 6   �� *	user_id+6�   �� 5   
   -   5        $��BtnSave��5   ~   $��Сохранить��6   $��Center=�6%   $��3��6B   $��2��6O   $��Center=�6c   6�   5      5      
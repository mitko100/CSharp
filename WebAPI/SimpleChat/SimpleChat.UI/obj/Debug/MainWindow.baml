   M S B A M L   `   `   `  ����  SimpleChat.UI    SimpleChat.UI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          � 
ResizeMode$  NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5	   	    � Icon$! Images/main-window-icon.png��5
   	   
������� � Title$ Simple Chat��5   	   $	��400��6   $	��250��6*   .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      $
��auto �6   6,   .+�5   
   �� -   5        $��listContacts��5      $��0��5      
�������$��Stretch=�5      ��5      �� 5      .R�5      ]� .+�5      �� $
��Left=�6$   $��5q�6:   
��� E��$��3��5   5   $��3��6?   y�5   $   �� *VisibleString+ �� FallbackValue$ Hidden��6a   �� 5      $
��Left=�6$   $��5q�6:   $��Right=�6E   $��5��5    $   $��20��6.   ��5   $   �� *StatusBrush+5    <   �� 5!      $
��Left=�6    $��5q�66   $��Images\user.png��5"       $��30��69   6F   �� 5#      $��textName��5&   $   $
��Left=�5#   $   $��5q�6:   $
��Bold"�5$   $   $��Center=�66   $
��Left=�5%   $   ��5&   4   �� *
Username+5'      5(      5)      5+      5,      5-      
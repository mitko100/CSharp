   M S B A M L   `   `   `  ����H  DSimpleChat.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SimpleChat.UISimpleChat.UI  5   	       SimpleChat.UI.LoginWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:SimpleChat.UI     5   	   
�������  � WindowStartupLocation$  CenterScreen=�5	   	    � Title$ Login��5
   	   $	��250��6   $	��400��6$   .��5      � $��5q�6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      $
��auto �6   6.   �� 5      6!   .+�5   
   � $��0��6    � RowDefinitions 5      �� 5      $��25 �6    6.   �� 5      6"   �� 5      6"   �� 5      6"   .+�5      �� $
��Bold"�6   $��Center=�5      $��Center=�5      Login6:   �� 5       $��1��6   $��5q�6&   $��Center=�5!      .+�5"      �� 
Username6&   �� 5#      -   5        $��textUsername��5#      $��mitko��6.   6=   5$      �� 5&      $��2��6   $��5q�6&   $��Center=�5'      .+�5(      �� 
Password6&   G� 5)      -   5        $��passwordPass��5*      $��1��5)       G� Password$	 123��5*   2   6C   5+      �� 5-      $��3��6   $��2��6&    �� Orientation$ 
Horizontal=�5.      $��Right=�5/      $��Bottom=�50      .+�51      �� -   5        $��buttonLogin��53      $��5q�51      $��80��6$    �� 	IsDefault . .��54   /   Login66   55      56      �� 58   
   $��1��6   
���   �$��5��61   $��Center=�59      61   � 5;   
   $��2��6    5<      �� 5=      $��25 �6    6.   �� 5>      6"   �� 5?      6"   �� 5@      6"   �� 5A      6"   .+�5D      �� $��2��6   $
��Bold"�6,   $��Center=�5E      $��Center=�5F      
Register6=   �� 5H      $��1��6   $��5q�6&   $��Center=�5I      .+�5J      �� 
Username6&   �� 5K      -   5        $��textRegisterUsername��5M      $��1��5K      $��1��6'   $��Center=�5L      $��2q�65   5M   8   5N      �� 5P      $��2��6   $��5q�6&   $��Center=�5Q      .+�5R      �� 
Password6&   G� 5S      -   5        $��passwordRegisterPass��5S      6<   5T      �� 5V      $��3��6   $��5q�6&   $��Center=�5W      .+�5X      �� Confirm Password6.   G� 5Y      -   5        $!��passwordRegisterConfirmPass��5Y      6C   5Z      �� 5\      $��4��6   $��2��6&   $ 
Horizontal=�5]      $��Right=�5^      $��Bottom=�5_      .+�5`      �� -   5        $��buttonRegister��5b      $��5q�5`      $��80��6$    . .��5c   2   
Register6<   5d      5e      5g      5h      
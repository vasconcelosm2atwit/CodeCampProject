   M S B A M L   `   `   `  ����O  KConferenceProjectWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ConferenceProjectWPFConferenceProjectWPF  5   	   %    ConferenceProjectWPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   .local"clr-namespace:ConferenceProjectWPF  5   	   Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5   	     � Title$  
MainWindow��5
   	   $	��768��6   $
��1200��6)    � WindowStartupLocation$ CenterScreen=�66    � 
ResizeMode$ 	CanResize=�6\   $	��600��6s   $
��1000��6�   .��5      ]� ��. .+�5   
   �� $��Bottom=�6   
���  ��5      �� 5   
   $
��Left=�6   ���	#FF14234F$��	0,0,0,0.4q�6B   $	��200��6U   .+�5      (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ PrimaryDark=�5      $��	0, 70,0,0q�5      $��
0, 0, 5, 0q�5      ���	#FF061338��5   (   Z� .��5      ��  �� Orientation$ Vertical=�5       $��0q�5!      ���	#FF14234F.+�5&      	� -   5        $
��Left=�5'          MaterialDesignTabRadioButton#��[  5(      $��4,4,0,4q�5*       d� 	IsChecked$
 TrueY�5+      $	��100��5-      $	��187��5.   /   .��50      �� $ 
Horizontal=�6%   .+�52      '  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=�53         Kind$
 Home=�54      $��40��55      $��36��56      �� 57      $
��Home��58      $��5,0,0,0q�59      $��74��5:      $��Bottom=�5;      $��20(�5<      $��32��6+   5?      5B      	� 5C      -   5        $
��Left=�5D      #��[  5E      $��4,4,0,4q�5F      $ FalseY�5G      $	��100��5H      $	��187��5I   +   .��5L      �� $ 
Horizontal=�5M      .+�5O        $
��Left=�5Q      $ 
PlusCircle=�5R      $��40��5S      $��36��5T      �� 5V      $��5,0,0,0q�5W   !   $��Rooms��5X      $��74��5Y      $��Bottom=�5Z      $��20(�5[      $��35��6+   5\      5]      	� 5^      -   5        #��[  5_      $��4,4,0,4q�5`      $ FalseY�5a      $
��Left=�5c      $	��100��5d      $	��187��6#   .��5e      �� $ 
Horizontal=�5f      $	��121��62   .+�5h        $
��Left=�5i      $ 	Timetable=�5j      $��40��5k      $��36��5l      �� 5n      $��5,0,0,0q�5o      $��Sessions��5p      $��Bottom=�5q      $��20(�5r      $��35��6+   5s      5u      	� 5v      -   5        #��[  5w      $��4,4,0,4q�5x      $ FalseY�5y      $	��100��5{      $
��Left=�5|      $	��187��64   .��5}      �� $ 
Horizontal=�5~      $	��121��62   .+�5�        $
��Left=�5�      $ AccountTieVoice=�5�      $��40��5�      $��36��5�      �� 5�      $��5,0,0,0q�5�      $��Speaker��5�      $��Bottom=�5�      $��20(�5�      $��35��6+   5�      5�      	� 5�      -   5        #��[  5�      $��4,4,0,4q�5�      $
��Left=�5�      $ FalseY�5�      $	��100��5�      $	��187��6$   .��5�      �� $ 
Horizontal=�5�      $	��150��62   .+�5�        $
��Left=�5�      $ ClockTimeEightOutline=�5�      $��40��5�      $��10,0,0,0q�5�      $��40��5�      �� 5�      $��5,0,0,0q�5�      $��
Time Slots��5�      $��Bottom=�5�      $��20(�5�      $��35��6+   $	��106��67   5�      5�      5�      5�      5�      �� 5�   
   $	��Top=�6   
��� ���5�       � 5�   
   -   5          �Name$
 Main��5�        � NavigationUIVisibility$ Hidden=�6   ���	#FFF7F4F46>   5�      5�      
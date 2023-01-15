md %AppData%\Microsoft\Templates\templates
rem Copy Files
copy 2022_Template.dotx %AppData%\Microsoft\Templates\templates\2022_Template.dotx
copy 2022_Template.dotx %AppData%\Microsoft\Templates\templates\2022_Template.potx
rem Set Permissions
icacls %AppData%\Microsoft\Templates\templates\2022_Template.dotx /grant Everyone:M
icacls %AppData%\Microsoft\Templates\templates\2022_Template.pots /grant Everyone:M
del %AppData%\Microsoft\Templates\templates\2021_Template.dotx
del %AppData%\Microsoft\Templates\templates\2021_Template.potx

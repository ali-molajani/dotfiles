## inorder two have two keyboard layout and switch between them you should go through these steps :
1. edit the **/etc/X11/xorg.conf.d/00-keyboard.conf** file like below :
```
Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,ir"
        Option "XkbModel" "pc105"
        Option "XkbOptions" "grp:alt_shift_toggle"
EndSection
```
**NOTE**:model and language is for my hardware make sure they are correct

2. you need to update the loacle stting also :
```bash
localectl --no-convert set-x11-keymap us,ir pc105 grp:alt_shift_toggle
```
if you wanna map binding to other you can see free binding by this :
```bash
grep "grp:.*toggle" /usr/share/X11/xkb/rules/base.lst
```
3. for the last step you need to add your binding to the **xprofile** in arch linux it is **/etc/profile** :
```
setxkbmap -model pc105 -layout us,ir -variant -option grp:alt_shift_toggle
```
now you are done , reboot and enjoy it!

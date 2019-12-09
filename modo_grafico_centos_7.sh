yum groupinstall "GNOME Desktop" -y
read var1
echo "Yes = Y"
if [ "$var1" == "Y" ]; then
yum groupinstall "Server with GUI"
fi
echo "Yes = Y"
read var2
if [ "$var2" == "Y" ]; then
unlink /etc/systemd/system/default.target
fi
echo "Yes = Y"
read var3
if [ "$var3" == "Y" ]; then
ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
fi
echo "ejecute el comando 'reboot'"

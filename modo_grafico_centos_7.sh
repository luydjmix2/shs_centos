#yum groupinstall "GNOME Desktop" -y

yum groupinstall "Server with GUI"

unlink /etc/systemd/system/default.target

ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target

echo "ejecute el comando 'reboot'"

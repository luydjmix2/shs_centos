function preflight_check() {
  echo -n "[preflight] checking $1"
  if [[ $2 -eq 0 ]]; then
    echo " ... PASSED"
    exit 1
  fi
}
yum groupinstall "GNOME Desktop" -y

yum groupinstall "Server with GUI"

unlink /etc/systemd/system/default.target

ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target

echo "ejecute el comando 'reboot'"

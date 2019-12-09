function preflight_check() {
  echo -n "[preflight] checking $1"
  if [[ $2 -eq 0 ]]; then
    echo " ... PASSED"
    exit 1
  fi
}
yum groupinstall "GNOME Desktop" -y
preflight_check "ejecute sentencia" $? "se necesita ejecutar la sentencia para continuar"
yum groupinstall "Server with GUI"
preflight_check "ejecute sentencia" $? "se necesita ejecutar la sentencia para continuar"
unlink /etc/systemd/system/default.target
preflight_check "ejecute sentencia" $? "se necesita ejecutar la sentencia para continuar"
ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
preflight_check "ejecute sentencia" $? "se necesita ejecutar la sentencia para continuar"
echo "ejecute el comando 'reboot'"

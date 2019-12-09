yum install epel-release -y
yum install yum-utils
yum install rpmconf
rpmconf -a
package-cleanup --leaves
package-cleanup --orphans
yum install dnf
dnf -y remove yum yum-metadata-parser
rm -Rf /etc/yum
dnf upgrade
dnf -y upgrade http://mirror.bytemark.co.uk/centos/8/BaseOS/x86_64/os/Packages/centos-release-8.0-0.1905.0.9.el8.x86_64.rpm
dnf -y upgrade https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf clean all
rpm -e `rpm -q kernel`
rpm -e --nodeps sysvinit-tools
dnf -y --releasever=8 --allowerasing --setopt=deltarpm=false distro-sync
dnf -y install kernel-core
dnf -y groupupdate "Core" "Minimal Install"
cat /etc/redhat-release

echo "fin ejecucion"

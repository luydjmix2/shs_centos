yum install epel-release -y
read var1
if [ "$var1" == "Y" ]; then
yum install yum-utils
fi
read var2
if["$var2" == "Y"]; then
yum install rpmconf
fi
read var3
if["$var3" == "Y"]; then
rpmconf -a
fi
read var4
if["$var4" == "Y"]; then
package-cleanup --leaves
fi
read var5
if["$var5" == "Y"]; then
package-cleanup --orphans
fi
read var6
if["$var6" == "Y"]; then
yum install dnf
fi
read var7
if["$var7" == "Y"]; then
dnf -y remove yum yum-metadata-parser
fi
read var8
if["$var8" == "Y"]; then
rm -Rf /etc/yum
fi
read var9
if["$var9" == "Y"]; then
dnf upgrade
fi
read var10
if["$var10" == "Y"]; then
dnf -y upgrade http://mirror.bytemark.co.uk/centos/8/BaseOS/x86_64/os/Packages/centos-release-8.0-0.1905.0.9.el8.x86_64.rpm
fi
read var11
if["$var11" == "Y"]; then
dnf -y upgrade https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
fi
read var12
if["$var12" == "Y"]; then
dnf clean all
fi
read var13
if["$var13" == "Y"]; then
rpm -e `rpm -q kernel`
fi
read var14
if["$var14" == "Y"]; then
rpm -e --nodeps sysvinit-tools
fi
read var15
if["$var15" == "Y"]; then
dnf -y --releasever=8 --allowerasing --setopt=deltarpm=false distro-sync
fi
read var16
if["$var16" == "Y"]; then
dnf -y install kernel-core
fi
read var17
if["$var17" == "Y"]; then
dnf -y groupupdate "Core" "Minimal Install"
fi
read var18
if["$var18" == "Y"]; then
cat /etc/redhat-release
fi
echo "fin ejecucion"

# Linux

## SSH

```bash
sudo ufw allow ssh
sudo systemctl status ssh
sudo systemctl enable ssh
sudo systemctl disable ssh
sudo systemctl start ssh
sudo systemctl stop ssh
```

## xrdp

```bash
sudo apt install xfce4 xfce4-goodies -y
sudo apt install xrdp -y
sudo systemctl status xrdp
sudo systemctl start xrdp
```

## QEMU KVM installing

```bash
sudo apt install qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager
sudo gpasswd -a $USER libvirt
sudo systemctl status libvirtd
```

## GRUB PASSWORD

```bash

# Generate a hashed password for the user
hashed_password=$(grub-mkpasswd-pbkdf2)

# Set the superuser and password in GRUB configuration
cat << EOF >> /etc/grub.d/00_header
set superusers="user_name"
password_pbkdf2 user_name $hashed_password
EOF

# Update GRUB configuration
sudo update-grub


grub-mkpasswd-pbkdf2
cat << EOF
set superusers="user_name"
password_pbkdf2 user_name grub.pbkdf2.sha512. >> /etc/grub.d/00_header
sudo update-grub
```

## GRUB BOOT time

```bash
nano /etc/default/grub
```
## disable/enable boost (ubuntu ryzen)
```bash
nano /sys/devices/system/cpu/cpufreq/boost #0 or 1
```
## omen rgb keyboard control
https://github.com/ranisalt/hp-omen-linux-module.git
```bash
sudo bash -c 'echo ffff99 > /sys/devices/platform/hp-wmi/rgb_zones/zone00'
```
## Жесты для тачпада (ubuntu)
```bash
sudo add-apt-repository ppa:touchegg/stable
sudo apt update
sudo apt install touchegg
```

## VNC SERVER

## LINUX HOTSPOT
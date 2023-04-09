# Installing Ubuntu 

1. Prepare booting USB & Download iso file

Please see 

- Ventoy : https://www.ventoy.net/en/index.html
- Ubuntu iso file: https://ubuntu.com/download/desktop/thank-you?version=22.04.2&architecture=amd64

2. In your computer, select your iso file and boot. 

Select appropriate parition and install

3. Set ethernet configuration

Exmaple
```bash
network:
  version: 2
    renderer: networkd
    ethernets:
      [networkname] ← ipfconfig -a 로 확인가능함(나는 eno1로뜸)
        addresses: [/23]
        gateway4:
        nameservers:
        addresses: 
          dhcp4: yes
          dhcp6: yes
```
generate & apply netplan
```bash
sudo netplan generate
sudo netplan apply
```


4. SSh setting 
```bash
sudo apt-get update
sudo apt-get install ssh
sudo apt-get install openssh-server
sudo service ssh start
```

- To setting port : in `/etc/ssh/sshd_config` change Port & `service sshd restart`

4-1. Install others

```bash
sudo apt install git
sudo apt-get install gcc
sudo apt-get install make
sudo apt install curl
sudo apt install automake
sudo apt install tmux
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
sudo apt install nodejs -y
sudo apt install npm
sudo apt-get upgrade python3
sudo apt-get install python3-pip
sudo apt install python-is-python3
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

5. (optional) vnc setting
```bash
sudo apt install tigervnc-standalone-server tigervnc-xorg-extension
sudo apt install ubuntu-gnome-desktop --no-install-recommends # or sudo apt install ubuntu-gnome-desktop no-recommends
sudo apt install gnome-tweaks
mkdir ~/.vnc
```


In `vi ~/.vnc/xstartup`,
```bash
vi ~/.vnc/xstartup
#!/bin/sh
# Start Gnome 3 Desktop
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
vncconfig -iconic &
dbus-launch --exit-with-session gnome-session &
```

6. (optional) remote desktop
```bash
sudo apt-get update
sudo apt-get install ubuntu-desktop
sudo apt-get install xrdp
sudo systemctl enable xrdp
sudo ufw allow 3389/tcp
```
If black screen is printed?

open startwm.sh by `sudo vim /etc/xrdp/startwm.sh` and add the below 
```bash
unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR
. $HOME/.profile
```
Like 
```bash
if test -r /etc/profile; then
        . /etc/profile
fi

unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR
. $HOME/.profile

if test -r /etc/default/locale; then
...
```

7. (optional) graphic card driver
```bash
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo reboot
nvidia-smi # after rebooting
```

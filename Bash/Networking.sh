nmcli connection show
nmcli connection show Wired\ connection\ 1
nmcli device show
nmcli con add con-name XXXX type xxx ifname xxxx
nmcli connection show --active
nmcli con mod xxxx ipv4.addresses xxx.xxx.xxx.xxx/24
nmcli con mod xxxx ipv4.gateway xxx.xxx.xxx.xxx
nmcli con mod xxxx ipv4.dns xxx.xxx.xxx.xxx
nmcli con show
nmcli con delete xxxx
nmcli con up xxxx
nmcli con mod Wired\ connection\ 1 ipv4.addresses +xxx.xxx.xxx.xxx/24
nmcli con mod Wired\ connection\ 1 +ipv4.dns xxx.xxx.xxx.xxx
nmcli connection show Wired\ connection\ 1
ip a s xxxx
cat /etc/resolv.conf
nmcli con up xxxx

# IP Address
ip -4 a s eth0
ip addr | grep eth0

# Flush DNS cache
sudo rndc flash lan


sysctl net.ipv4.ip_local_port_range
sysctl net.ipv4.tcp_fin_timeout
# (61000 - 32768) / 60 = 470

# NetStat
# Ubuntu
sudo apt-get install net-tools

#RHEL
dnf install net-tools

# All
netstat --all | head -n 15

# Show only TCP ports, use the --all and --tcp options
netstat --all | head -n 15

# Show only UDP ports, use the --all and --udp options
netstat -au | head -n 5

# Show all listening TCP and UDP ports with process ID (PID) and numerical address
# Short version is -tulpn
sudo netstat --tcp --udp --listening --programs --numeric

sudo netstat -anlp | grep cups

# Test port
netstat -ane | grep "443" | grep "LISTEN"
ip a
telnet 192.168.1.1 443
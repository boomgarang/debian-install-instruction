sudo apt update -y && sudo apt upgrade -y

sudo apt install build-essential gcc perl bzip2 dkms make git -y

sudo apt install linux-headers-$(uname -r) -y

cd /home/student/Desktop

wget https://github.com/201853910/VMwareWorkstation/releases/download/17.0/VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle

chmod +x VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle

./VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle

git clone https://github.com/mkubecek/vmware-host-modules.git

cd vmware-host-modules/

git checkout workstation-17.5.1

make

sudo make install

sudo /etc/init.d/vmware start

cd /home/student/Desktop

rm -rf vmware-host-modules init.sh VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle
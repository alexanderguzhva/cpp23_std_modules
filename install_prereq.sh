sudo apt update

# install what's needed
sudo apt-get install -y -q apt-transport-https ca-certificates gnupg software-properties-common wget

# add cmake key
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -

# add repo for cmake
sudo apt-add-repository -y 'deb https://apt.kitware.com/ubuntu/ noble main'
sudo apt-get update

# this should install cmake 3.30+
sudo apt-get install -y cmake

# download llvm script
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh

sudo ./llvm.sh 19

sudo apt install -y clang-tools-19 libc++-19-dev

sudo apt install -y ninja-build

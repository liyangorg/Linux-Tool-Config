alias ll='ls -al --color --sort=extension'
alias ls='ls --color --sort=extension'
alias vr='sudo virsh'
alias grep='grep --color -n'
test -s ~/.alias && . ~/.alias || true
export LESS="-erX"
export LD_LIBRARY_PATH=/usr/local/phython27/lib/:$LD_LIBRARY_PATH
PATH=/usr/local/phython27/bin/:$PATH
#PATH=$PATH:/home/liyang/opt/gcc/arm-linux-gnueabi-gcc
PATH=$PATH:/opt/software/toolchain/gcc-linaro-5.5.0-2017.10-x86_64_arm-linux-gnueabi/bin/
PATH=$PATH:/home/liyang/opt/gcc/
PATH=$PATH:/usr/include/
#PATH=$PATH:/home/w00379786/install/bin
PATH=$PATH:/opt/gcc-linaro-6.4.1-2018.05-x86_64_aarch64-linux-gnu/bin/
PATH=$PATH:/home/w00379786/tools/gcc-linaro-7.3.1-2018.05-x86_64_armeb-linux-gnueabihf/bin/
#PATH=$PATH:/opt/gcc-linaro-6.4.1-2018.05-x86_64_arm-linux-gnueabi/bin/
~

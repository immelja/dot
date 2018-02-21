# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

#cpuminer -a cryptonight -o stratum+tcp://turtlecoinpool.ml:3333 -u TRTLv24yRkT3r4ESzup1VKBNoeDZ5YSgBQQodY9KkBQkhamRXPaNBbSJ218q241XdA12ir9jTcUvFiDmuoDLjfvzfUzkMFeCev7 -p x

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/cpuminer-multi:$HOME/bin:$HOME/.local/bin:$PATH"


alias mine='nohup cpuminer -a cryptonight -o stratum+tcp://turtlecoinpool.ml:3333 -u TRTLv24yRkT3r4ESzup1VKBNoeDZ5YSgBQQodY9KkBQkhamRXPaNBbSJ218q241XdA12ir9jTcUvFiDmuoDLjfvzfUzkMFeCev7 -p x > log.txt &'

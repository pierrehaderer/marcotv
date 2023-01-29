# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# MARCO.TV ::
# config du son ... :: 1 pour HDMI, 0 pour Audio-Jack
( sleep 30; pactl set-default-sink 1 ) &
# flot des Menus Utilisateurs ::
( sleep 12;BASEDIR=/home/marco/repo/marcotv;export BASEDIR;$BASEDIR/USER/UL ) &
# flot de l'Administration de la Box et des cartouches ::
( sleep 2;BASEDIR=/home/marco/repo/marcotv;export BASEDIR;$BASEDIR/microsd/SL ) &
# flot du Player :: (a suivre)


#!/usr/vin/env bash

[ -n "$PS1" ] && source ~/.bash_profile;

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

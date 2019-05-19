#!/usr/bin/env bash
#                     UUSCRIPT - Universal Updator Script For Linux
#                             <=============================
#                             filename  : uuscript.sh
#                             author    : N0D3_F0x3R(n4x3r)
#                             Lisen     : NOLISEN Project
#                             version   : v.1
#                             language  : GNU-Bash Script
#                             platform  : GNU-Linux
#                             =============================>
#
mainUUSCRIPT(){
  clear
  echo -e "\e[93m"
  echo -e "  ╔════════════════════════════════════════════════════════════════════════════════════╗"
  echo -e "  ║ ███    ███  ███    ███  ████████  ████████  ████████  ████████  ████████  ████████ ║"
  echo -e "  ║ ███    ███  ███    ███  ███       ███       ███   ██     ██     ███   ██     ██    ║"
  echo -e "  ║ ███    ███  ███    ███  ████████  ███       ████████     ██     ████████     ██    ║"
  echo -e "  ║ ███    ███  ███    ███       ███  ███       ███ ███      ██     ███          ██    ║"
  echo -e "  ║  ████████    ████████   ████████  ████████  ███  ███  ████████  ███          ██    ║"
  echo -e "  ╚═══════════════════════════════════════════════════════════════════════════v.1══════╝"
  echo -e "\e[94m  ╚═linux distribution auto updater script"
  echo -e "  ╚═author: n4x3r \e[0m"
  echo -e "\e[91m  [!]In Debian based operating system, you must add repositories manualy before run uuscript"
  echo -e ""
  echo -e "  [*]After complete upgrade process your system automaticaly reboot"
  echo -e ""
  echo -en "  Hit the Enter Key to Continue...\e[0m"
  read
}

checkDist(){
  cd /etc/;
  #Check if the system Arch based??
  if [ -d /etc/pacman.d ]; then
    sudo pacman -Syu
    reboot
  fi
  #Check if the system Debian based??
  if [ -d /etc/apt ]; then
    sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && reboot
  fi
  checkDist
}

mainUUSCRIPT
checkDist

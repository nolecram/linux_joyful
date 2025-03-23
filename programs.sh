#!/bin/bash

# LinuxJoyful Fun Commands Script
# This script allows users to explore fun Linux commands interactively.

# Function to display a menu of commands
show_menu() {
  echo "Welcome to LinuxJoyful! Choose a command to run:"
  echo "1) Show a Steam locomotive (sl)"
  echo "2) Show a burning fire (aafire)"
  echo "3) Continuously repeat your string (yes)"
  echo "4) Display a random saying (fortune)"
  echo "5) Rainbowize your text (lolcat)"
  echo "6) Puffetize your text (figlet)"
  echo "7) Create a banner (banner)"
  echo "8) Summon a mouse-following cat (oneko)"
  echo "9) Show a cow saying something (cowsay)"
  echo "10) Display an aquarium (asciiquarium)"
  echo "11) Matrix movie effect (Cmatrix)"
  echo "12) Eyes following your mouse (xeyes)"
  echo "13) Let your Linux desktop speak (espeak)"
  echo "14) Create a fake identity (rig)"
  echo "15) Reverse a string (rev)"
  echo "16) Factorize a number (factor)"
  echo "0) Exit"
}

# Function to execute the selected command
execute_command() {
  case $1 in
    1) sl ;;
    2) aafire ;;
    3) yes "Hello, LinuxJoyful!" ;;
    4) fortune ;;
    5) echo "LinuxJoyful is fun!" | lolcat ;;
    6) figlet "LinuxJoyful" ;;
    7) banner "LinuxJoyful" ;;
    8) oneko ;;
    9) cowsay "LinuxJoyful is awesome!" ;;
    10) asciiquarium ;;
    11) cmatrix ;;
    12) xeyes ;;
    13) espeak "Welcome to LinuxJoyful!" ;;
    14) rig ;;
    15) echo "LinuxJoyful" | rev ;;
    16) echo "Enter a number to factorize:" && read number && factor $number ;;
    0) echo "Goodbye!" && exit 0 ;;
    *) echo "Invalid option. Please try again." ;;
  esac
}

# Main script loop
while true; do
  show_menu
  echo "Enter your choice:"
  read choice
  execute_command $choice
done

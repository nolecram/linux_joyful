#!/bin/bash

################################################################################
# LinuxJoyful - Fun Commands Script
# A collection of entertaining and humorous Linux commands
# GitHub: https://github.com/nolecram/LinuxJoyful
################################################################################

# Enable strict error handling
set -o pipefail

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

################################################################################
# Utility Functions
################################################################################

# Display error message
error() {
  echo -e "${RED}✗ Error: $1${NC}" >&2
}

# Display success message
success() {
  echo -e "${GREEN}✓ $1${NC}"
}

# Display info message
info() {
  echo -e "${BLUE}ℹ $1${NC}"
}

# Display warning message
warning() {
  echo -e "${YELLOW}⚠ $1${NC}"
}

# Check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Display a section separator
separator() {
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}

# Clear screen
clear_screen() {
  clear
}

################################################################################
# Menu Display Functions
################################################################################

# Display the main menu
show_menu() {
  clear_screen
  separator
  echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${BLUE}║${NC} Welcome to ${GREEN}LinuxJoyful${NC}! ${BLUE}║${NC}"
  echo -e "${BLUE}║${NC} Choose a fun command to run: ${BLUE}║${NC}"
  echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
  separator
  echo ""
  
  # Visual/Animation Commands
  echo -e "${YELLOW}📺 Visual & Animation Commands:${NC}"
  echo "  1) 🚂 Steam locomotive (sl)"
  echo "  2) 🔥 Fire animation (aafire)"
  echo "  3) 🐱 Mouse-following cat (oneko)"
  echo "  4) 👀 Eyes following cursor (xeyes)"
  echo "  5) 🐠 ASCII aquarium (asciiquarium)"
  echo "  6) 💚 Matrix movie effect (cmatrix)"
  echo ""
  
  # Text Effects Commands
  echo -e "${YELLOW}✍️  Text Effect Commands:${NC}"
  echo "  7) 📝 Large ASCII text (figlet)"
  echo "  8) 🎫 Banner text (banner)"
  echo "  9) 🌈 Rainbow text (lolcat)"
  echo " 10) 🐄 Cow saying text (cowsay)"
  echo " 11) 🔊 Text-to-speech (espeak)"
  echo ""
  
  # Utility Commands
  echo -e "${YELLOW}🛠️  Utility Commands:${NC}"
  echo " 12) 💬 Random fortune/quote (fortune)"
  echo " 13) 🔄 Infinite repetition (yes)"
  echo " 14) 👤 Generate fake identity (rig)"
  echo " 15) ↩️  Reverse text (rev)"
  echo " 16) 🔢 Factorize a number (factor)"
  echo ""
  
  separator
  echo -e " ${GREEN}0) Exit${NC}"
  echo ""
}

################################################################################
# Command Execution Functions
################################################################################

# Execute selected command with error handling
execute_command() {
  local choice=$1
  
  case $choice in
    1) run_sl ;;
    2) run_aafire ;;
    3) run_oneko ;;
    4) run_xeyes ;;
    5) run_asciiquarium ;;
    6) run_cmatrix ;;
    7) run_figlet ;;
    8) run_banner ;;
    9) run_lolcat ;;
    10) run_cowsay ;;
    11) run_espeak ;;
    12) run_fortune ;;
    13) run_yes ;;
    14) run_rig ;;
    15) run_rev ;;
    16) run_factor ;;
    0) exit_program ;;
    *) invalid_option ;;
  esac
}

# Helper function to run command with availability check
run_with_check() {
  local cmd=$1
  local display_name=$2
  shift 2
  
  if ! command_exists "$cmd"; then
    warning "Command '$cmd' not found on this system"
    info "See docs/INSTALLATION.md for installation instructions"
    echo "Install on Ubuntu/Debian: sudo apt-get install $cmd"
    echo "Install on macOS: brew install $cmd"
    return 1
  fi
  
  "$@"
}

# Visual/Animation commands
run_sl() {
  run_with_check "sl" "Steam Locomotive" sl
}

run_aafire() {
  run_with_check "aafire" "AAFire" aafire
}

run_oneko() {
  warning "Click on terminal window, then press Ctrl+C to exit"
  run_with_check "oneko" "Oneko" oneko
}

run_xeyes() {
  warning "This opens a new window. Close it to return to menu"
  run_with_check "xeyes" "XEyes" xeyes &
}

run_asciiquarium() {
  warning "Press 'q' to exit"
  run_with_check "asciiquarium" "ASCII Aquarium" asciiquarium
}

run_cmatrix() {
  warning "Press 'q' or Ctrl+C to exit"
  run_with_check "cmatrix" "CMatrix" cmatrix
}

# Text Effects commands
run_figlet() {
  run_with_check "figlet" "Figlet" sh -c 'read -p "Enter text: " text; figlet "$text"'
}

run_banner() {
  run_with_check "banner" "Banner" sh -c 'read -p "Enter text: " text; banner "$text"'
}

run_lolcat() {
  if ! command_exists "lolcat"; then
    warning "Command 'lolcat' not found"
    info "See docs/INSTALLATION.md for installation instructions"
    return 1
  fi
  echo "Rainbow text maker!"
  echo "LinuxJoyful is awesome!" | lolcat
}

run_cowsay() {
  run_with_check "cowsay" "Cowsay" sh -c 'read -p "What should the cow say? " text; cowsay "$text"'
}

run_espeak() {
  run_with_check "espeak" "ESpeak" sh -c 'read -p "What should I say? " text; espeak "$text"'
}

# Utility commands
run_fortune() {
  run_with_check "fortune" "Fortune" fortune
}

run_yes() {
  info "Repeating 'Hello, LinuxJoyful!' - Press Ctrl+C to stop"
  yes "Hello, LinuxJoyful!"
}

run_rig() {
  run_with_check "rig" "Random Identity" rig
}

run_rev() {
  run_with_check "rev" "Reverse Text" sh -c 'read -p "Enter text to reverse: " text; echo "$text" | rev'
}

run_factor() {
  run_with_check "factor" "Factor" sh -c 'read -p "Enter a number to factorize: " number; \
    if [[ "$number" =~ ^[0-9]+$ ]]; then \
      factor "$number"; \
    else \
      echo "Please enter a valid number"; \
    fi'
}

# Exit program
exit_program() {
  clear_screen
  echo -e "${GREEN}"
  echo "╔════════════════════════════════════════════════════════════╗"
  echo "║  Thank you for using LinuxJoyful!                         ║"
  echo "║  For more info: https://github.com/nolecram/LinuxJoyful   ║"
  echo "╚════════════════════════════════════════════════════════════╝"
  echo -e "${NC}"
  exit 0
}

# Invalid option
invalid_option() {
  error "Invalid option. Please try again."
  read -p "Press Enter to continue..."
}

################################################################################
# Main Script Loop
################################################################################

main() {
  while true; do
    show_menu
    read -p "Enter your choice [0-16]: " choice
    
    # Validate input
    if [[ ! "$choice" =~ ^[0-9]+$ ]]; then
      error "Please enter a valid number"
      sleep 1
      continue
    fi
    
    execute_command "$choice"
    
    # Wait for user to see output (unless exiting)
    if [[ "$choice" != "0" ]]; then
      echo ""
      read -p "Press Enter to continue..."
    fi
  done
}

################################################################################
# Script Execution
################################################################################

# Run main program
main

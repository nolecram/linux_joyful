.PHONY: help install run clean test deps

# Color output
RED = \033[0;31m
GREEN = \033[0;32m
YELLOW = \033[1;33m
NC = \033[0m # No Color

# Default target
help:
	@echo "$(GREEN)LinuxJoyful Makefile$(NC)"
	@echo "$(YELLOW)Available targets:$(NC)"
	@echo "  $(GREEN)install$(NC)     - Install dependencies (interactive)"
	@echo "  $(GREEN)run$(NC)         - Run the LinuxJoyful script"
	@echo "  $(GREEN)test$(NC)        - Test script syntax"
	@echo "  $(GREEN)deps$(NC)        - Check for required dependencies"
	@echo "  $(GREEN)clean$(NC)       - Remove temporary files"
	@echo "  $(GREEN)help$(NC)        - Show this help message"

# Install dependencies (prompts user for their system)
install:
	@echo "$(YELLOW)Select your system:$(NC)"
	@echo "1) Ubuntu/Debian"
	@echo "2) Fedora/RHEL"
	@echo "3) macOS (Homebrew)"
	@echo "4) Arch Linux"
	@read -p "Enter choice [1-4]: " choice; \
	case $$choice in \
		1) echo "$(GREEN)Installing for Ubuntu/Debian...$(NC)"; \
		   sudo apt-get update && sudo apt-get install -y sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix x11-apps espeak;; \
		2) echo "$(GREEN)Installing for Fedora/RHEL...$(NC)"; \
		   sudo dnf install -y sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix xorg-x11-apps espeak;; \
		3) echo "$(GREEN)Installing for macOS...$(NC)"; \
		   brew install sl fortune lolcat figlet cowsay asciiquarium cmatrix espeak;; \
		4) echo "$(GREEN)Installing for Arch Linux...$(NC)"; \
		   sudo pacman -S --noconfirm sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix xorg-xeyes espeak;; \
		*) echo "$(RED)Invalid choice$(NC)"; exit 1;; \
	esac

# Run the main script
run:
	@bash programs.sh

# Test script syntax
test:
	@echo "$(YELLOW)Testing bash syntax...$(NC)"
	@if bash -n programs.sh; then \
		echo "$(GREEN)✓ Syntax check passed$(NC)"; \
	else \
		echo "$(RED)✗ Syntax errors found$(NC)"; \
		exit 1; \
	fi

# Check for available dependencies
deps:
	@echo "$(YELLOW)Checking for LinuxJoyful dependencies:$(NC)"
	@commands="sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix xeyes espeak rig factor"; \
	for cmd in $$commands; do \
		if command -v $$cmd >/dev/null 2>&1; then \
			echo "$(GREEN)✓$(NC) $$cmd"; \
		else \
			echo "$(RED)✗$(NC) $$cmd (not found)"; \
		fi; \
	done
	@echo "$(YELLOW)Note:$(NC) Run 'make install' to install missing dependencies"

# Clean up temporary files
clean:
	@echo "$(YELLOW)Cleaning temporary files...$(NC)"
	@rm -f *.tmp *.log *.bak
	@echo "$(GREEN)✓ Cleanup complete$(NC)"

# Alternative targets for convenience
start: run
setup: install
syntax-check: test
check-deps: deps

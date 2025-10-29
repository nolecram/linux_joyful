# Installation Guide

## Prerequisites

LinuxJoyful requires bash and a Unix-like system (Linux, macOS, WSL on Windows). Some commands require specific tools to be installed.

### System Requirements
- Bash 4.0+
- Linux kernel or compatible Unix system (Linux, macOS, WSL)
- Standard Unix utilities

### Optional Command Dependencies

Each command in LinuxJoyful depends on specific packages. Install the tools for commands you want to use:

**Ubuntu/Debian:**
```bash
sudo apt-get install sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix x11-apps espeak
```

**Fedora/RHEL:**
```bash
sudo dnf install sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix xorg-x11-apps espeak
```

**macOS:**
```bash
brew install sl fortune lolcat figlet cowsay asciiquarium cmatrix espeak
```

**Arch Linux:**
```bash
sudo pacman -S sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix xorg-xeyes espeak
```

## Installation Steps

### Option 1: Clone and Run (Recommended)
```bash
git clone https://github.com/nolecram/LinuxJoyful.git
cd LinuxJoyful
bash programs.sh
```

### Option 2: Using Make
```bash
git clone https://github.com/nolecram/LinuxJoyful.git
cd LinuxJoyful
make install
make run
```

### Option 3: Manual Setup
1. Copy `programs.sh` to a directory in your PATH or a preferred location
2. Make it executable: `chmod +x programs.sh`
3. Run: `./programs.sh` or `bash programs.sh`

## Troubleshooting

### "Command not found" Error
If you see "Command not found" for a specific fun command, you need to install the tool. See the Optional Command Dependencies section above for your system.

### Permission Denied
If you get a "Permission denied" error, make the script executable:
```bash
chmod +x programs.sh
```

### No Such File or Directory
Make sure you're running the script from the correct directory or provide the full path:
```bash
bash /path/to/programs.sh
```

### Bash Version Issues
If you encounter syntax errors, ensure you're using bash, not sh:
```bash
bash programs.sh
```
Not:
```bash
sh programs.sh
```

## Uninstallation

To remove LinuxJoyful, simply delete the directory:
```bash
rm -rf LinuxJoyful
```

Individual command-line tools can be uninstalled using your package manager if needed.

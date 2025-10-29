# FAQ - Frequently Asked Questions

## General Questions

### What is LinuxJoyful?
LinuxJoyful is a collection of humorous and entertaining Linux commands bundled into an interactive bash script. It's designed to bring fun and creativity to the command line while helping you discover interesting tools.

### Is LinuxJoyful free?
Yes! LinuxJoyful is open-source and distributed under the Apache 2.0 License, meaning it's completely free to use, modify, and distribute.

### Can I use this on macOS?
Yes! While it's called "LinuxJoyful," most commands work on macOS as well. You can install the required tools using Homebrew.

### Can I use this on Windows?
Windows 10/11 with WSL (Windows Subsystem for Linux) can run LinuxJoyful. Install WSL 2, then follow the Linux installation instructions within your WSL terminal.

## Installation & Setup

### Why do I get "command not found" errors?
The command you selected requires additional tools to be installed. See the [Installation Guide](INSTALLATION.md) for instructions on installing dependencies for your operating system.

### Can I run just one command without the menu?
Yes! You can either:
1. Edit `programs.sh` and run just that command
2. Install the tool and run it directly (e.g., `figlet "Hello"`)

### How do I make the script executable?
Run:
```bash
chmod +x programs.sh
```

Then you can execute it directly:
```bash
./programs.sh
```

### Do I need to be root/sudo to run this?
No, the main script doesn't require root privileges. However, some systems might require elevated privileges to install packages via your package manager.

## Troubleshooting

### The script hangs/freezes
Some commands (like `asciiquarium` or `oneko`) run continuously. Press `Ctrl+C` to exit them and return to the menu.

### Menu appears corrupted or doesn't display properly
Make sure you're running it with bash:
```bash
bash programs.sh
```

If you still have issues, check your terminal encoding (should be UTF-8) and terminal size (should be at least 80x24 characters).

### One specific command doesn't work while others do
That command requires a tool that's not installed. Install it using your package manager.

### Colors not displaying correctly
Some tools like `lolcat` require terminal support for 256-color output. Try:
1. Check your `TERM` environment variable: `echo $TERM`
2. Ensure it's set to a color terminal like `xterm-256color`
3. Update: `export TERM=xterm-256color`

## Contributing & Customization

### How can I add a new command?
See [ARCHITECTURE.md](ARCHITECTURE.md) for instructions on adding new commands to the script.

### Can I modify the script for my own use?
Absolutely! LinuxJoyful is open-source. Feel free to customize it for your needs. If you make improvements, consider contributing them back!

### How do I contribute improvements?
See [CONTRIBUTING.md](../CONTRIBUTING.md) for our contribution guidelines.

### Where do I report bugs?
Please create an issue on the [GitHub Issues page](https://github.com/nolecram/LinuxJoyful/issues).

## Performance & Safety

### Is LinuxJoyful safe to use?
Yes! All commands are standard, well-known Linux/Unix utilities available in official package repositories. The script itself is simple and transparent (you can read the entire source code).

### Will running this script delete my files or cause any damage?
No. LinuxJoyful commands are purely for display and entertainment. They don't modify your file system or data.

### Can I run multiple commands simultaneously?
The current menu system runs commands sequentially. You could modify the script to run them in the background if desired.

## System Resources

### Does this use a lot of CPU/Memory?
Most commands are lightweight. Some animations like `cmatrix` or `aafire` use more resources while running, but nothing excessive. Usage depends on your hardware and terminal size.

### Can I run this on low-resource systems?
Yes, but some animations might run slowly on very old hardware. Text-based utilities like `fortune`, `figlet`, and `cowsay` are lightweight and should run fine anywhere.

## Documentation

### Where's the full command reference?
Each command is self-explanatory in the menu. For detailed information about specific tools, you can:
1. Check the manual: `man sl` (replace with tool name)
2. Check the tool's help: `figlet --help`
3. Visit the tool's GitHub repository

### Is there a video tutorial?
Not currently, but the script is straightforward enough that the menu guides you through everything.

## Support & Contact

### The FAQ doesn't answer my question
Create an issue on [GitHub Issues](https://github.com/nolecram/LinuxJoyful/issues) or start a discussion!

### Can I contact the maintainers?
Issues and pull requests are the best way to communicate. Check the repository for any contact information in the README or profile.

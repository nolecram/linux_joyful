# LinuxJoyful 🎉

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Contributions Welcome](https://img.shields.io/badge/Contributions-Welcome-brightgreen.svg)](CONTRIBUTING.md)

A collection of humorous commands and entertaining animations for Linux and macOS. These playful tools bring a smile to your face while exploring the command line. Give them a try whenever you need a dose of fun!

<p align="center">
  <img src="linuxjoy.jpeg" alt="LinuxJoyful Logo" width="300" />
</p>

## 📋 Table of Contents

- [Features](#-features)
- [Quick Start](#-quick-start)
- [Installation](#-installation)
- [Usage](#-usage)
- [Available Commands](#-available-commands)
- [Contributing](#-contributing)
- [License](#-license)
- [Documentation](#-documentation)

## ✨ Features

- **Interactive Menu**: User-friendly menu system for selecting commands
- **16 Fun Commands**: Visual animations, text effects, and utilities
- **Cross-Platform**: Works on Linux and macOS
- **Easy to Extend**: Simple structure to add new commands
- **No Heavy Dependencies**: Lightweight and modular design
- **Open Source**: Apache 2.0 Licensed - free to use and modify

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/nolecram/LinuxJoyful.git
cd LinuxJoyful

# Run the script
bash programs.sh

# Or with make
make install
make run
```

## 📦 Installation

### Prerequisites
- Bash 4.0+
- Linux, macOS, or WSL on Windows

### Option 1: Clone and Run (Recommended)
```bash
git clone https://github.com/nolecram/LinuxJoyful.git
cd LinuxJoyful
bash programs.sh
```

### Option 2: Using Makefile
```bash
git clone https://github.com/nolecram/LinuxJoyful.git
cd LinuxJoyful
make install
make run
```

### Optional: Install Dependencies
Some commands require additional tools. See [Installation Guide](docs/INSTALLATION.md) for system-specific instructions.

**Quick install (Ubuntu/Debian):**
```bash
sudo apt-get install sl aafire fortune lolcat figlet cowsay asciiquarium cmatrix x11-apps espeak
```

## 🎮 Usage

Simply run the script:
```bash
bash programs.sh
```

A menu will display 16 different commands to choose from. Select a number (1-16) or type 0 to exit.

## 🎨 Available Commands

| # | Command | Description |
|---|---------|-------------|
| 1 | `sl` | Steam locomotive animation |
| 2 | `aafire` | Fire animation effect |
| 3 | `yes` | Infinite string repetition |
| 4 | `fortune` | Random sayings & quotes |
| 5 | `lolcat` | Rainbow colored text |
| 6 | `figlet` | Large ASCII art text |
| 7 | `banner` | Simple banner text |
| 8 | `oneko` | Mouse-following cat |
| 9 | `cowsay` | ASCII cow speaking |
| 10 | `asciiquarium` | ASCII aquarium animation |
| 11 | `cmatrix` | Matrix rain effect |
| 12 | `xeyes` | Eyes following mouse |
| 13 | `espeak` | Text-to-speech |
| 14 | `rig` | Generate fake identities |
| 15 | `rev` | Reverse text |
| 16 | `factor` | Integer factorization |

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to:
- Report issues
- Suggest features
- Submit pull requests
- Follow our code of conduct

## 📚 Documentation

- [Installation Guide](docs/INSTALLATION.md) - Detailed setup instructions for all systems
- [Architecture](docs/ARCHITECTURE.md) - Project structure and how to extend it
- [FAQ](docs/FAQ.md) - Frequently asked questions
- [Contributing Guide](CONTRIBUTING.md) - How to contribute to the project
- [Code of Conduct](CODE_OF_CONDUCT.md) - Community standards

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## ⚠️ Troubleshooting

**"Command not found" error?**
→ See [Installation Guide](docs/INSTALLATION.md) to install missing tools

**Script freezes?**
→ Press `Ctrl+C` to exit animations and return to menu

**Need help?**
→ Check [FAQ](docs/FAQ.md) or create an [issue](https://github.com/nolecram/LinuxJoyful/issues)

---

Made with ❤️ for the Linux community. Enjoy!

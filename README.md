# 🚀 Coding with AI - Development Environment Setup

**Official installation scripts for [Your Course Name] students**

[![GitHub release](https://img.shields.io/github/release/yourusername/coding-with-ai-setup.svg)](https://github.com/yourusername/coding-with-ai-setup/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Windows-lightgrey.svg)](https://github.com/yourusername/coding-with-ai-setup)

> ⚠️ **SECURITY NOTICE**: Only run these scripts from this official repository. Never run installation scripts from unknown sources or unauthorized forks.

## 📦 What Gets Installed

### Core Development Tools
- ✅ **Node.js & npm** - JavaScript runtime and package manager
- ✅ **Git** - Version control system  
- ✅ **Visual Studio Code** - Primary code editor with essential extensions

### Development Utilities
- ✅ **Windows Terminal** (Windows only) - Modern terminal experience
- ✅ **Essential VS Code Extensions**: JSON support, Prettier formatter, TypeScript support, AI assistance

### AI Coding Assistant (Your Choice)
- 🤖 **Gemini CLI** - Google's AI coding assistant
- 🧠 **Claude Code** - Anthropic's AI coding assistant  
- 🌟 **Qwen-Code** - Alibaba Cloud's AI coding assistant
- 🚀 **Install ALL** - Get all three AI tools for maximum flexibility

## 🖥️ Quick Start

### For macOS Users

1. **Download the script**: [setup_macos.sh](./setup_macos.sh)
2. **Open Terminal** (`Cmd + Space` → type "Terminal")
3. **Navigate to downloads**:
   ```bash
   cd ~/Downloads
   ```
4. **Make executable and run**:
   ```bash
   chmod +x setup_macos.sh
   ./setup_macos.sh
   ```

### For Windows Users

1. **Download the script**: [setup_windows.ps1](./setup_windows.ps1)
2. **Right-click Start** → **"Windows PowerShell (Admin)"**
3. **Navigate to downloads**:
   ```powershell
   cd $env:USERPROFILE\Downloads
   ```
4. **Run the script**:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; .\setup_windows.ps1
   ```

## ⚠️ Prerequisites

### macOS Requirements
- macOS 10.15 (Catalina) or later
- Administrator privileges
- Internet connection
- At least 2GB free disk space

### Windows Requirements  
- Windows 10 version 1903 or later
- Administrator privileges
- Internet connection
- At least 2GB free disk space
- PowerShell 5.1 or later

## 🔧 Installation Features

### ✨ Interactive Setup
- **Git configuration** with name and email validation
- **AI assistant selection** (individual or all tools)
- **Progress indicators** and success confirmations
- **Error handling** with helpful messages

### 🎯 Post-Installation
- **Development folder structure** created automatically
- **VS Code extensions** pre-installed and configured
- **Service signup links** provided for:
  - 🐙 **GitHub**: Version control and collaboration
  - ⚡ **Surge**: Static site deployment
  - 🔺 **Vercel**: Modern web app deployment

## 📋 After Installation

### 1. Verify Installation
```bash
node --version
git --version
code --version
```

### 2. Configure AI Tools
Choose your preferred AI assistant and follow setup:
- **Gemini**: `npm run setup`
- **Claude**: `claude auth`
- **Qwen**: `qwen-code setup`

### 3. Sign Up for Services
Use the links provided at the end of installation:
- [GitHub Signup](https://github.com/signup)
- [Surge](https://surge.sh)
- [Vercel Signup](https://vercel.com/signup)

### 4. Start Your First Project
```bash
cd Development/projects
mkdir my-first-project
cd my-first-project
git init
code .
```

## 🆘 Need Help?

### Common Issues
- **Script won't run**: Check you have admin privileges
- **Installation fails**: Ensure stable internet connection
- **AI tools not working**: Check if authentication is required

### Get Support
- 📖 Check our [Troubleshooting Guide](./TROUBLESHOOTING.md)
- 🐛 [Report a Bug](https://github.com/yourusername/coding-with-ai-setup/issues/new?template=bug_report.md)
- 💬 [Ask a Question](https://github.com/yourusername/coding-with-ai-setup/discussions)
- 📧 Contact: [your.email@university.edu]

## 🔒 Security

- Read our [Security Policy](./SECURITY.md)
- Only download from this official repository
- Verify checksums for important releases
- Report security issues privately

## 📚 Course Information

**Course**: [Your Course Name]  
**Instructor**: [Your Name]  
**University**: [Your University]  
**Semester**: [Current Semester]

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Test your changes thoroughly
4. Submit a pull request

## 📊 Version History

See [CHANGELOG.md](./CHANGELOG.md) for detailed version history.

---

**Made with ❤️ for coding students everywhere**

*Questions? Issues? Reach out during office hours or create a GitHub issue!*
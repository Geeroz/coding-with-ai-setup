# 🚀 Coding with AI - Development Environment Setup

Simplified installation scripts for your coding class that install only the essential tools plus your choice of AI coding assistant.

## 📦 What Gets Installed

### Core Development Tools
- **Node.js & npm** - JavaScript runtime and package manager
- **Git** - Version control system  
- **Visual Studio Code** - Primary code editor with essential extensions

### Development Utilities
- **Windows Terminal** (Windows only) - Modern terminal experience
- **Essential VS Code Extensions**: JSON support, Prettier formatter, TypeScript support

### AI Coding Assistant (Choose One or All)
- **Gemini CLI** - Google's AI coding assistant
- **Claude Code** - Anthropic's AI coding assistant  
- **Qwen-Code** - Alibaba Cloud's AI coding assistant
- **Install ALL** - Get all three AI tools for maximum flexibility

## 🖥️ Installation Instructions

### For macOS Users

1. **Download the macOS script** (`setup_macos.sh`)
2. **Open Terminal** (press `Cmd + Space`, type "Terminal")
3. **Navigate to the script location**:
   ```bash
   cd ~/Downloads  # or wherever you saved the script
   ```
4. **Make the script executable**:
   ```bash
   chmod +x setup_macos.sh
   ```
5. **Run the script**:
   ```bash
   ./setup_macos.sh
   ```
6. **Follow the prompts** to choose your AI assistant

### For Windows Users

1. **Download the Windows script** (`setup_windows.ps1`)
2. **Right-click Start button** → Select "Windows PowerShell (Admin)" or "Terminal (Admin)"
3. **Navigate to the script location**:
   ```powershell
   cd $env:USERPROFILE\Downloads  # or wherever you saved the script
   ```
4. **Run the script**:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; .\setup_windows.ps1
   ```
5. **Follow the prompts** to choose your AI assistant(s)
6. **Sign up for essential services** using the provided links

## 🤖 AI Assistant Details

### 1. Gemini CLI (Google)
- **Best for**: Google ecosystem integration
- **Setup after install**: Run configuration commands as prompted
- **Usage**: Natural language code generation and assistance

### 2. Claude Code (Anthropic) 
- **Best for**: Thoughtful, step-by-step coding assistance
- **Setup after install**: `claude auth` to authenticate
- **Usage**: Advanced reasoning and code explanation

### 4. Install ALL AI Tools
- **Best for**: Maximum flexibility and trying different AI assistants
- **What you get**: Gemini CLI + Claude Code + Qwen-Code all installed
- **Setup after install**: Configure each tool individually
- **Usage**: Switch between different AI assistants as needed

## 🌐 Essential Service Signups

The scripts will provide links for these essential services:

### GitHub (Version Control & Collaboration)
- **Why needed**: Host your code, collaborate, and showcase projects
- **Signup**: https://github.com/signup
- **What to do**: Create account, verify email, set up profile

### Surge (Static Site Deployment)  
- **Why needed**: Deploy static websites instantly
- **Signup**: https://surge.sh
- **What to do**: No signup needed initially - just install and use

### Vercel (Modern Web Deployment)
- **Why needed**: Deploy React, Next.js, and other modern web apps
- **Signup**: https://vercel.com/signup  
- **What to do**: Sign up with GitHub account for easy integration

## ⚠️ Important Notes

### Before Running Scripts
- **macOS**: Ensure you have internet connection and admin privileges
- **Windows**: Must run PowerShell as Administrator
- **Both**: Close any running instances of VS Code or Git

### After Installation
1. **Restart your computer** (especially important for Windows)
2. **Configure Git** with your information (done automatically during installation!)
3. **Set up your chosen AI assistant(s)** following the prompts
4. **Sign up for essential services**:
   - GitHub: https://github.com/signup
   - Surge: https://surge.sh  
   - Vercel: https://vercel.com/signup

## 🔧 Quick Verification

Test your installation by running these commands:

```bash
# Check installations
node --version
git --version  
code --version

# Test AI assistant (example for Claude Code)
claude --help
```

## 📁 Development Structure

The scripts create this organized folder structure:
- **macOS**: `~/Development/`
- **Windows**: `%USERPROFILE%\Development\`

```
Development/
├── projects/     # For your main coding projects
└── learning/     # For practice and class exercises
```

## 🆘 Troubleshooting

### Common Issues

**Script won't run:**
- Ensure admin privileges (Windows) or sudo access (macOS)
- Check internet connection
- Verify script file permissions

**AI CLI not working:**
- Restart terminal after installation
- Check if authentication/setup is required
- Verify the CLI was added to system PATH

**VS Code extensions missing:**
- Open VS Code manually
- Go to Extensions panel (Ctrl/Cmd + Shift + X)
- Install missing extensions manually

### Getting Help
1. Copy any error messages
2. Note which installation step failed
3. Ask your instructor for assistance
4. Check the specific tool's documentation

## 🎯 Quick Start Guide

After successful installation:

1. **Open VS Code**: `code`
2. **Create a new project**:
   ```bash
   cd Development/projects
   mkdir my-first-project
   cd my-first-project
   code .
   ```
3. **Initialize Git**:
   ```bash
   git init
   ```
4. **Start coding with AI assistance**! 🚀

## 💡 Using Your AI Assistant

### Example Commands:
```bash
# For Claude Code
claude "Help me write a function to sort an array"

# For Gemini CLI  
gemini "Explain this JavaScript code"

# For Qwen-Code
qwen-code "Debug this function"
```

## 🎓 Class-Ready Features

- **Consistent environment** across all student machines
- **Essential tools only** - no bloat or unnecessary packages
- **AI assistance** for learning and problem-solving
- **Modern development workflow** with Git and VS Code
- **Easy verification** to ensure everything works

---

*Everything you need to start coding with AI assistance - nothing more, nothing less!* ✨
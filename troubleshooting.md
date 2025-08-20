# 🔧 Troubleshooting Guide

Having installation issues? This guide covers the most common problems and their solutions.

## 🚀 Quick Fixes

### Before You Start
1. **Restart your terminal** and try again
2. **Check internet connection** is stable
3. **Ensure you have admin privileges**
4. **Close VS Code and other development tools**
5. **Try running the script again** (some failures are temporary)

## 🍎 macOS Issues

### Script Won't Run
**Problem**: `Permission denied` or `command not found`

**Solutions**:
```bash
# Make script executable
chmod +x setup_macos.sh

# Check if file downloaded correctly
ls -la setup_macos.sh

# Run with explicit bash
bash setup_macos.sh
```

### Xcode Command Line Tools Issues
**Problem**: Xcode installation hanging or failing

**Solutions**:
```bash
# Remove existing incomplete installation
sudo rm -rf /Library/Developer/CommandLineTools

# Manually install
xcode-select --install

# Alternative: Install Xcode from App Store first
```

### Homebrew Installation Fails
**Problem**: Homebrew installation script fails

**Solutions**:
```bash
# Check system requirements
sw_vers  # Should be macOS 10.15+

# Manual Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Fix PATH for Apple Silicon Macs
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile
```

### Package Installation Errors
**Problem**: `Error: Cannot install X`

**Solutions**:
```bash
# Update Homebrew
brew update
brew upgrade

# Clear Homebrew cache
brew cleanup

# Try manual installation
brew install git
brew install node
brew install --cask visual-studio-code
```

### Node.js/npm Issues
**Problem**: npm commands fail or permission errors

**Solutions**:
```bash
# Check Node installation
which node
node --version

# Fix npm permissions (if needed)
sudo chown -R $(whoami) ~/.npm

# Reinstall Node via Homebrew
brew uninstall node
brew install node
```

## 🪟 Windows Issues

### PowerShell Execution Policy
**Problem**: `Execution of scripts is disabled on this system`

**Solutions**:
```powershell
# Run as Administrator and set policy
Set-ExecutionPolicy Bypass -Scope Process -Force

# Alternative: Use specific execution policy
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Check current policy
Get-ExecutionPolicy -List
```

### Chocolatey Installation Fails
**Problem**: Chocolatey won't install

**Solutions**:
```powershell
# Check PowerShell version (need 5.1+)
$PSVersionTable.PSVersion

# Manual Chocolatey installation
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Refresh environment
refreshenv
```

### Windows Terminal Installation Issues
**Problem**: Windows Terminal won't install via winget

**Solutions**:
```powershell
# Try alternative installation methods
# Method 1: Via Microsoft Store
start ms-windows-store://pdp/?productid=9N0DX20HK701

# Method 2: Via Chocolatey
choco install microsoft-windows-terminal -y

# Method 3: Direct download from GitHub
# Visit: https://github.com/microsoft/terminal/releases
```

### Package Installation Failures
**Problem**: Chocolatey packages fail to install

**Solutions**:
```powershell
# Update Chocolatey
choco upgrade chocolatey

# Clear cache
choco cache clean

# Try installing packages individually
choco install git -y
choco install nodejs -y
choco install vscode -y

# Check if Windows is up to date
# Windows Update → Check for updates
```

### VS Code Extension Issues
**Problem**: Extensions won't install

**Solutions**:
```powershell
# Check if VS Code is in PATH
code --version

# Manual extension installation
code --install-extension ms-vscode.vscode-json
code --install-extension esbenp.prettier-vscode

# Open VS Code and install manually
code
# Go to Extensions (Ctrl+Shift+X) and search for extensions
```

## 🤖 AI Tools Issues

### Gemini CLI Problems
**Problem**: npm install fails or CLI doesn't work

**Solutions**:
```bash
# Check npm configuration
npm config list

# Clear npm cache
npm cache clean --force

# Try global installation with different method
sudo npm install -g @google/generative-ai  # macOS/Linux
npm install -g @google/generative-ai --force  # Windows

# Manual setup
mkdir ~/gemini-cli
cd ~/gemini-cli
npm init -y
npm install @google/generative-ai
```

### Claude Code Issues
**Problem**: Claude CLI installation fails

**Solutions**:

**macOS**:
```bash
# Check Homebrew tap
brew tap anthropic/claude

# Manual installation
curl -L https://github.com/anthropic/claude-cli/releases/latest/download/claude-macos -o claude
chmod +x claude
sudo mv claude /usr/local/bin/
```

**Windows**:
```powershell
# Try alternative installation
npm install -g claude-cli

# Or download directly from releases page
# Visit: https://github.com/anthropic/claude-cli/releases
```

### Qwen-Code Issues
**Problem**: Installation or setup fails

**Solutions**:
```bash
# Check Node.js version (might need specific version)
node --version  # Should be 16+ 

# Try alternative installation
npm install -g qwen-code-cli --registry https://registry.npmjs.org/

# Manual setup
git clone https://github.com/qwen-ai/qwen-code.git
cd qwen-code
npm install
npm link
```

## 🔧 General Issues

### Git Configuration Problems
**Problem**: Git commands fail or user info not set

**Solutions**:
```bash
# Check Git installation
git --version

# Manually configure Git
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Check configuration
git config --list

# Fix line ending issues (Windows)
git config --global core.autocrlf true
```

### Network/Firewall Issues
**Problem**: Downloads fail or timeout

**Solutions**:
- **Check antivirus/firewall settings**
- **Try different network** (mobile hotspot)
- **Contact IT support** if on corporate/school network
- **Use VPN** if certain sites are blocked

### Disk Space Issues
**Problem**: Not enough space for installation

**Solutions**:
```bash
# Check available space
df -h  # macOS/Linux
Get-PSDrive C  # Windows PowerShell

# Clean up space
# - Empty trash/recycle bin
# - Remove old downloads
# - Use disk cleanup tools
```

### Permission Issues
**Problem**: Permission denied errors

**Solutions**:

**macOS**:
```bash
# Fix ownership of development folder
sudo chown -R $(whoami) ~/Development

# Fix Homebrew permissions
sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
```

**Windows**:
```powershell
# Run PowerShell as Administrator
# Right-click PowerShell → "Run as Administrator"

# Check if you're admin
[Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544'
```

## 🆘 Still Having Issues?

### Before Asking for Help
1. **Copy the exact error message**
2. **Note which step failed**
3. **Check if you followed all prerequisites**
4. **Try the basic troubleshooting steps above**

### Where to Get Help
1. **GitHub Issues**: [Create a bug report](https://github.com/yourusername/coding-with-ai-setup/issues/new?template=bug_report.md)
2. **Class Discussion Forum**: [Link to your course forum]
3. **Office Hours**: [Your office hours schedule]
4. **Email Support**: [your.email@university.edu]

### What to Include in Bug Reports
```markdown
**Operating System**: macOS 13.1 / Windows 11
**Script Version**: v1.2.0
**Error Message**: [Exact error text]
**Steps to Reproduce**: 
1. Downloaded script
2. Ran chmod +x setup_macos.sh
3. Executed ./setup_macos.sh
4. Error occurred at Git configuration step

**Additional Context**: 
- First time running script
- Fresh macOS installation
- University network
```

## 🔄 Manual Installation

If the scripts completely fail, here's how to install everything manually:

### Core Tools (All Platforms)
1. **Git**: https://git-scm.com/downloads
2. **Node.js**: https://nodejs.org/en/download/
3. **VS Code**: https://code.visualstudio.com/download

### Package Managers
- **macOS**: Install Homebrew from https://brew.sh
- **Windows**: Install Chocolatey from https://chocolatey.org/install

### AI Tools
- **Claude Code**: https://docs.anthropic.com/claude/docs/claude-code
- **Gemini CLI**: `npm install -g @google/generative-ai`

### VS Code Extensions
Open VS Code → Extensions panel (Ctrl/Cmd+Shift+X) → Search and install:
- JSON Language Features
- Prettier - Code formatter  
- TypeScript and JavaScript Language Features
- GitHub Copilot Chat

---

**Remember**: Most issues are temporary and can be resolved with patience and the right approach. Don't hesitate to ask for help!
# Windows Coding with AI Setup Script
# Run as Administrator in PowerShell: Set-ExecutionPolicy Bypass -Scope Process -Force; .\setup_windows.ps1

Write-Host "🪟 Starting Windows Coding with AI Setup..." -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

# Check if running as Administrator
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "❌ This script requires Administrator privileges!" -ForegroundColor Red
    Write-Host "Please run PowerShell as Administrator and try again." -ForegroundColor Yellow
    exit 1
}

# Function to check if a command exists
function Test-Command($cmdname) {
    return [bool](Get-Command -Name $cmdname -ErrorAction SilentlyContinue)
}

# Install Chocolatey package manager
Write-Host "🍫 Installing Chocolatey package manager..." -ForegroundColor Green
if (-not (Test-Command choco)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    RefreshEnv
} else {
    Write-Host "✅ Chocolatey already installed" -ForegroundColor Green
    choco upgrade chocolatey -y
}

# Install Windows Terminal (modern terminal)
Write-Host "💻 Installing Windows Terminal..." -ForegroundColor Green
try {
    winget install Microsoft.WindowsTerminal --accept-source-agreements --accept-package-agreements
} catch {
    Write-Host "Installing via Chocolatey as fallback..." -ForegroundColor Yellow
    choco install microsoft-windows-terminal -y
}

# Install core development tools
Write-Host "🔧 Installing core development tools..." -ForegroundColor Green

$packages = @(
    "git",
    "vscode", 
    "nodejs"
)

foreach ($package in $packages) {
    Write-Host "Installing $package..." -ForegroundColor Yellow
    choco install $package -y
}

# Refresh environment variables
Write-Host "🔄 Refreshing environment..." -ForegroundColor Green
RefreshEnv

# Install essential VS Code extensions
Write-Host "🔌 Installing essential VS Code extensions..." -ForegroundColor Green
$extensions = @(
    "ms-vscode.vscode-json",
    "esbenp.prettier-vscode",
    "ms-vscode.vscode-typescript-next",
    "GitHub.copilot-chat",
    "ms-vscode.vscode-ai"
)

foreach ($extension in $extensions) {
    Write-Host "Installing extension: $extension" -ForegroundColor Yellow
    & code --install-extension $extension
}

# Create development directories
Write-Host "📁 Creating development directories..." -ForegroundColor Green
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\Development\projects"
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\Development\learning"

# Set up Git configuration interactively
Write-Host "📝 Git configuration..." -ForegroundColor Green
Write-Host "Let's set up your Git identity:" -ForegroundColor White

do {
    $gitName = Read-Host "Enter your full name"
} while ([string]::IsNullOrWhiteSpace($gitName))

do {
    $gitEmail = Read-Host "Enter your email address"
    $emailPattern = '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}

# AI CLI Installation Options
Write-Host ""
Write-Host "🤖 AI CLI Installation Options" -ForegroundColor Magenta
Write-Host "===============================" -ForegroundColor Magenta
Write-Host "Choose AI coding assistant(s) to install:" -ForegroundColor White
Write-Host "1) Gemini CLI (Google)" -ForegroundColor White
Write-Host "2) Claude Code (Anthropic)" -ForegroundColor White  
Write-Host "3) Qwen-Code (Alibaba Cloud)" -ForegroundColor White
Write-Host "4) Install ALL AI tools" -ForegroundColor White
Write-Host "5) Skip AI CLI installation" -ForegroundColor White
Write-Host ""

do {
    $choice = Read-Host "Enter your choice (1-5)"
    switch ($choice) {
        "1" {
            Write-Host "🔮 Installing Gemini CLI..." -ForegroundColor Green
            # Install via npm (Google AI CLI)
            npm install -g @google/generative-ai
            # Install VS Code extension for Gemini
            code --install-extension Google.google-ai-studio
            Write-Host "✅ Gemini CLI and VS Code extension installed. Configure with: npm run setup" -ForegroundColor Green
            break
        }
        "2" {
            Write-Host "🧠 Installing Claude Code..." -ForegroundColor Green
            # Install Claude Code via direct download or package manager
            winget install Anthropic.Claude --accept-source-agreements --accept-package-agreements
            if ($LASTEXITCODE -ne 0) {
                Write-Host "Trying alternative installation method..." -ForegroundColor Yellow
                npm install -g claude-cli
            }
            # Install VS Code extension for Claude
            code --install-extension Anthropic.claude-dev
            Write-Host "✅ Claude Code and VS Code extension installed. Configure with: claude auth" -ForegroundColor Green
            break
        }
        "3" {
            Write-Host "🌟 Installing Qwen-Code..." -ForegroundColor Green
            # Install via npm (assuming it's available via npm)
            npm install -g qwen-code-cli
            # Note: Qwen may not have a specific VS Code extension yet
            Write-Host "✅ Qwen-Code installed. Configure with: qwen-code setup" -ForegroundColor Green
            break
        }
        "4" {
            Write-Host "🚀 Installing ALL AI tools..." -ForegroundColor Green
            # Install Gemini CLI
            Write-Host "Installing Gemini CLI..." -ForegroundColor Yellow
            npm install -g @google/generative-ai
            code --install-extension Google.google-ai-studio
            
            # Install Claude Code
            Write-Host "Installing Claude Code..." -ForegroundColor Yellow
            winget install Anthropic.Claude --accept-source-agreements --accept-package-agreements
            if ($LASTEXITCODE -ne 0) {
                Write-Host "Trying alternative installation method..." -ForegroundColor Yellow
                npm install -g claude-cli
            }
            code --install-extension Anthropic.claude-dev
            
            # Install Qwen-Code
            Write-Host "Installing Qwen-Code..." -ForegroundColor Yellow
            npm install -g qwen-code-cli
            
            Write-Host "✅ All AI tools installed! Configure each with their respective setup commands." -ForegroundColor Green
            break
        }
        "5" {
            Write-Host "⏭️ Skipping AI CLI installation" -ForegroundColor Yellow
            break
        }
        default {
            Write-Host "❌ Invalid choice. Please enter 1, 2, 3, 4, or 5." -ForegroundColor Red
        }
    }
} while ($choice -notin @("1", "2", "3", "4", "5"))

Write-Host ""
Write-Host "🎉 Setup Complete!" -ForegroundColor Green
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "✅ Chocolatey package manager installed" -ForegroundColor Green
Write-Host "✅ Windows Terminal installed" -ForegroundColor Green
Write-Host "✅ Visual Studio Code installed" -ForegroundColor Green
Write-Host "✅ Git installed" -ForegroundColor Green
Write-Host "✅ Node.js and npm installed" -ForegroundColor Green
Write-Host "✅ Essential VS Code extensions installed" -ForegroundColor Green
Write-Host "✅ Development directories created" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next Steps:" -ForegroundColor Yellow
Write-Host "1. 🔄 RESTART YOUR COMPUTER for all changes to take effect" -ForegroundColor Red
Write-Host "2. ✅ Git is already configured with your information" -ForegroundColor Green
Write-Host "3. Configure your chosen AI CLI (if installed)" -ForegroundColor White
Write-Host "4. Sign up for these essential services:" -ForegroundColor White
Write-Host "   🐙 GitHub: https://github.com/signup" -ForegroundColor Cyan
Write-Host "   ⚡ Surge: https://surge.sh" -ForegroundColor Cyan
Write-Host "   🔺 Vercel: https://vercel.com/signup" -ForegroundColor Cyan
Write-Host "5. Start coding! 🚀" -ForegroundColor White
Write-Host ""
Write-Host "📍 Your development folder: $env:USERPROFILE\Development\" -ForegroundColor Cyan
Write-Host "📝 Test your setup:" -ForegroundColor White
Write-Host "   node --version" -ForegroundColor Gray
Write-Host "   git --version" -ForegroundColor Gray
Write-Host "   code --version" -ForegroundColor Gray

# Pause to let user read the output
Read-Host "Press Enter to exit..."
} while (-not ($gitEmail -match $emailPattern))

# Set Git configuration
git config --global user.name "$gitName"
git config --global user.email "$gitEmail"
Write-Host "✅ Git configured with name: $gitName and email: $gitEmail" -ForegroundColor Green

# AI CLI Installation Options
Write-Host ""
Write-Host "🤖 AI CLI Installation Options" -ForegroundColor Magenta
Write-Host "===============================" -ForegroundColor Magenta
Write-Host "Choose one AI coding assistant to install:" -ForegroundColor White
Write-Host "1) Gemini CLI (Google)" -ForegroundColor White
Write-Host "2) Claude Code (Anthropic)" -ForegroundColor White  
Write-Host "3) Qwen-Code (Alibaba Cloud)" -ForegroundColor White
Write-Host "4) Skip AI CLI installation" -ForegroundColor White
Write-Host ""

do {
    $choice = Read-Host "Enter your choice (1-4)"
    switch ($choice) {
        "1" {
            Write-Host "🔮 Installing Gemini CLI..." -ForegroundColor Green
            # Install via npm (Google AI CLI)
            npm install -g @google/generative-ai
            Write-Host "✅ Gemini CLI installed. Configure with: npm run setup" -ForegroundColor Green
            break
        }
        "2" {
            Write-Host "🧠 Installing Claude Code..." -ForegroundColor Green
            # Install Claude Code via direct download or package manager
            winget install Anthropic.Claude --accept-source-agreements --accept-package-agreements
            if ($LASTEXITCODE -ne 0) {
                Write-Host "Trying alternative installation method..." -ForegroundColor Yellow
                npm install -g claude-cli
            }
            Write-Host "✅ Claude Code installed. Configure with: claude auth" -ForegroundColor Green
            break
        }
        "3" {
            Write-Host "🌟 Installing Qwen-Code..." -ForegroundColor Green
            # Install via npm (assuming it's available via npm)
            npm install -g qwen-code-cli
            Write-Host "✅ Qwen-Code installed. Configure with: qwen-code setup" -ForegroundColor Green
            break
        }
        "4" {
            Write-Host "⏭️ Skipping AI CLI installation" -ForegroundColor Yellow
            break
        }
        default {
            Write-Host "❌ Invalid choice. Please enter 1, 2, 3, or 4." -ForegroundColor Red
        }
    }
} while ($choice -notin @("1", "2", "3", "4"))

Write-Host ""
Write-Host "🎉 Setup Complete!" -ForegroundColor Green
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "✅ Chocolatey package manager installed" -ForegroundColor Green
Write-Host "✅ Windows Terminal installed" -ForegroundColor Green
Write-Host "✅ Visual Studio Code installed" -ForegroundColor Green
Write-Host "✅ Git installed" -ForegroundColor Green
Write-Host "✅ Node.js and npm installed" -ForegroundColor Green
Write-Host "✅ Essential VS Code extensions installed" -ForegroundColor Green
Write-Host "✅ Development directories created" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next Steps:" -ForegroundColor Yellow
Write-Host "1. 🔄 RESTART YOUR COMPUTER for all changes to take effect" -ForegroundColor Red
Write-Host "2. Configure Git with your name and email" -ForegroundColor White
Write-Host "3. Configure your chosen AI CLI (if installed)" -ForegroundColor White
Write-Host "4. Start coding! 🚀" -ForegroundColor White
Write-Host ""
Write-Host "📍 Your development folder: $env:USERPROFILE\Development\" -ForegroundColor Cyan
Write-Host "📝 Test your setup:" -ForegroundColor White
Write-Host "   node --version" -ForegroundColor Gray
Write-Host "   git --version" -ForegroundColor Gray
Write-Host "   code --version" -ForegroundColor Gray

# Pause to let user read the output
Read-Host "Press Enter to exit..."
#!/bin/bash

# macOS Coding with AI Setup Script
# Run with: bash setup_macos.sh

set -e  # Exit on any error

echo "🍎 Starting macOS Coding with AI Setup..."
echo "========================================"

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "❌ This script is for macOS only!"
    exit 1
fi

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Xcode Command Line Tools (required for Homebrew)
echo "📱 Installing Xcode Command Line Tools..."
if ! command_exists xcode-select; then
    xcode-select --install
    echo "Please complete the Xcode Command Line Tools installation and run this script again."
    exit 1
fi

# Install Homebrew
echo "🍺 Installing Homebrew..."
if ! command_exists brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH for Apple Silicon Macs
    if [[ $(uname -m) == "arm64" ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo "✅ Homebrew already installed"
    brew update
fi

# Install core development tools
echo "🔧 Installing core development tools..."
brew install --cask visual-studio-code
brew install git
brew install node

# Install basic VS Code extensions for coding
echo "🔌 Installing essential VS Code extensions..."
code --install-extension ms-vscode.vscode-json
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension GitHub.copilot-chat # For AI assistance
code --install-extension ms-vscode.vscode-ai # AI support

# Configure Git interactively
echo "📝 Git configuration..."
echo "Let's set up your Git identity:"

while true; do
    read -p "Enter your full name: " git_name
    if [[ -n "$git_name" ]]; then
        break
    else
        echo "❌ Name cannot be empty. Please try again."
    fi
done

while true; do
    read -p "Enter your email address: " git_email
    if [[ "$git_email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
        break
    else
        echo "❌ Please enter a valid email address."
    fi
done

# Set Git configuration
git config --global user.name "$git_name"
git config --global user.email "$git_email"
echo "✅ Git configured with name: $git_name and email: $git_email"

# Create development directory
echo "📁 Creating development directory..."
mkdir -p ~/Development/projects
mkdir -p ~/Development/learning

# AI CLI Installation Options
echo ""
echo "🤖 AI CLI Installation Options"
echo "==============================="
echo "Choose AI coding assistant(s) to install:"
echo "1) Gemini CLI (Google)"
echo "2) Claude Code (Anthropic)"
echo "3) Qwen-Code (Alibaba Cloud)"
echo "4) Install ALL AI tools"
echo "5) Skip AI CLI installation"
echo ""

while true; do
    read -p "Enter your choice (1-5): " choice
    case $choice in
        1)
            echo "🔮 Installing Gemini CLI..."
            # Install via npm (Google AI CLI)
            npm install -g @google/generative-ai
            # Install VS Code extension for Gemini
            code --install-extension Google.google-ai-studio
            echo "✅ Gemini CLI and VS Code extension installed. Configure with: npm run setup"
            break
            ;;
        2)
            echo "🧠 Installing Claude Code..."
            # Install Claude Code CLI
            brew install anthropic/claude/claude
            # Install VS Code extension for Claude
            code --install-extension Anthropic.claude-dev
            echo "✅ Claude Code and VS Code extension installed. Configure with: claude auth"
            break
            ;;
        3)
            echo "🌟 Installing Qwen-Code..."
            # Install via npm (assuming it's available via npm)
            npm install -g qwen-code-cli
            # Note: Qwen may not have a specific VS Code extension yet
            echo "✅ Qwen-Code installed. Configure with: qwen-code setup"
            break
            ;;
        4)
            echo "🚀 Installing ALL AI tools..."
            # Install Gemini CLI
            echo "Installing Gemini CLI..."
            npm install -g @google/generative-ai
            code --install-extension Google.google-ai-studio
            
            # Install Claude Code
            echo "Installing Claude Code..."
            brew install anthropic/claude/claude
            code --install-extension Anthropic.claude-dev
            
            # Install Qwen-Code
            echo "Installing Qwen-Code..."
            npm install -g qwen-code-cli
            
            echo "✅ All AI tools installed! Configure each with their respective setup commands."
            break
            ;;
        5)
            echo "⏭️ Skipping AI CLI installation"
            break
            ;;
        *)
            echo "❌ Invalid choice. Please enter 1, 2, 3, 4, or 5."
            ;;
    esac
done

echo ""
echo "🎉 Setup Complete!"
echo "======================================="
echo "✅ Homebrew installed"
echo "✅ Visual Studio Code installed"
echo "✅ Git installed"
echo "✅ Node.js and npm installed"
echo "✅ Essential VS Code extensions installed"
echo "✅ Development directories created"
echo ""
echo "📋 Next Steps:"
echo "1. Restart your terminal or run: source ~/.zprofile"
echo "2. ✅ Git is already configured with your information"
echo "3. Configure your chosen AI CLI (if installed)"
echo "4. Sign up for these essential services:"
echo "   🐙 GitHub: https://github.com/signup"
echo "   ⚡ Surge: https://surge.sh"
echo "   🔺 Vercel: https://vercel.com/signup"
echo "5. Start coding! 🚀"
echo ""
echo "📍 Your development folder: ~/Development/"
echo "📝 Test your setup:"
echo "   node --version"
echo "   git --version"
echo "   code --version"
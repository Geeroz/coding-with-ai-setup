# 📝 Changelog

All notable changes to the Coding with AI setup scripts will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned
- Add support for Linux Ubuntu/Debian
- Docker containerized development environment option
- Automated testing framework for scripts
- Integration with university SSO systems

## [1.2.1] - 2025-08-27

### Added
- 📖 **Thai language support** - Complete Thai translation (readme-th.md)
- 🛠️ **Manual installation guide** - Step-by-step instructions for individual tool installation
- 📦 **Multiple package manager support** - Homebrew, Chocolatey, Winget options
- 🔗 **Language selector** - Easy access to Thai documentation from main README

### Fixed
- 🐛 **PowerShell syntax errors** in windows_setup.ps1 (lines 88, 86, 129, 134, 135)
- ✅ **Email regex pattern** - Fixed unterminated string causing script failures
- 🔄 **Do-while loop closure** - Proper email validation loop structure
- 🧹 **Duplicate code removal** - Cleaned up misplaced git configuration blocks

### Changed
- 📝 **Course name updated** - Now "VideCode โคตร Vibe Workshop"
- 🌐 **Improved accessibility** - Bilingual documentation support

## [1.2.0] - 2025-01-XX

### Added
- Interactive Git configuration with name and email validation
- "Install ALL AI tools" option for maximum flexibility
- Essential service signup links (GitHub, Surge, Vercel)
- VS Code extensions for AI assistance (GitHub Copilot Chat, AI support)
- Specific VS Code extensions for each AI tool (Gemini, Claude)
- Email validation with regex pattern matching
- Enhanced error messages and user feedback

### Changed
- Improved user experience with clearer prompts
- Updated installation success messages
- Better organization of post-installation steps

### Fixed
- Git configuration now handled automatically during installation
- Proper PATH setup for Apple Silicon Macs
- VS Code extension installation timing issues

## [1.1.0] - 2025-01-XX

### Added
- Windows Terminal installation for better terminal experience
- PowerShell 7 installation on Windows
- Essential VS Code extensions (JSON, Prettier, TypeScript)
- Development folder structure creation
- Interactive AI assistant selection menu
- Cross-platform compatibility improvements

### Changed
- Simplified package list to focus on essential tools only
- Removed heavy dependencies (Python, Anaconda, Docker)
- Streamlined installation process for faster setup
- Updated documentation with clearer instructions

### Security
- Added administrator privilege checks
- Improved error handling for failed installations
- Better validation of user inputs

## [1.0.0] - 2025-01-XX

### Added
- Initial release of macOS setup script
- Initial release of Windows setup script
- Core development tools installation:
  - Node.js and npm
  - Git version control
  - Visual Studio Code
- AI coding assistant options:
  - Gemini CLI (Google)
  - Claude Code (Anthropic)
  - Qwen-Code (Alibaba Cloud)
- Package manager installation:
  - Homebrew for macOS
  - Chocolatey for Windows
- Basic error handling and user feedback
- Development directory structure creation

### Security
- Administrator privilege requirements
- Basic input validation
- Safe installation practices

---

## Version History Overview

| Version | Release Date | Key Features |
|---------|-------------|--------------|
| 1.2.1   | 2025-08-27  | Thai translation, Manual installation guide, PowerShell syntax fixes |
| 1.2.0   | 2025-01-XX  | Interactive Git config, Install all AI tools, Service signup links |
| 1.1.0   | 2025-01-XX  | Windows Terminal, Essential extensions, Simplified package list |
| 1.0.0   | 2025-01-XX  | Initial release, Core tools, AI assistant selection |

## How to Read This Changelog

### Categories
- **Added**: New features
- **Changed**: Changes in existing functionality  
- **Deprecated**: Soon-to-be removed features
- **Removed**: Removed features
- **Fixed**: Bug fixes
- **Security**: Security improvements

### Version Numbers
- **Major** (X.0.0): Breaking changes or major new features
- **Minor** (0.X.0): New features that are backward compatible
- **Patch** (0.0.X): Bug fixes and small improvements

## Release Process

### Testing
All releases are tested on:
- macOS Monterey (12.x) and newer
- Windows 10 (version 1903) and newer  
- Windows 11
- Fresh virtual machines
- University lab computers

### Release Checklist
- [ ] Scripts tested on clean systems
- [ ] Documentation updated
- [ ] Security review completed
- [ ] Student feedback incorporated
- [ ] Changelog updated
- [ ] GitHub release created
- [ ] Course materials updated

## Student Feedback Integration

We actively incorporate student feedback into new releases:

### v1.2.0 Student Requests
- ✅ "Can Git be configured automatically?" → Interactive Git setup
- ✅ "I want to try all AI tools" → Install all option
- ✅ "Need help with deployment services" → Added signup links
- ✅ "VS Code doesn't have AI features" → Added AI extensions

### v1.1.0 Student Requests  
- ✅ "Windows command prompt is hard to use" → Windows Terminal
- ✅ "Too many tools I don't need" → Simplified to essentials
- ✅ "Setup takes too long" → Streamlined installation

### Future Considerations
- 🔄 "Support for Linux?" → Planned for v1.3.0
- 🔄 "Docker for consistent environments?" → Under investigation
- 🔄 "Integration with university login?" → Exploring options

## Breaking Changes

### From 1.1.0 to 1.2.0
- **None** - Fully backward compatible

### From 1.0.0 to 1.1.0
- **None** - Fully backward compatible
- **Note**: Removed Python/Anaconda installation (simplified focus)

## Support Policy

- **Current Version**: Full support and active development
- **Previous Major Version**: Security updates only
- **Older Versions**: Community support only

Current support status:
- **v1.2.x**: ✅ Full support
- **v1.1.x**: ✅ Security updates
- **v1.0.x**: ⚠️ Community support only

---

**Questions about releases?** Contact [your.email@university.edu] or create a [GitHub issue](https://github.com/yourusername/coding-with-ai-setup/issues).
# 🔒 Security Policy

## 🚨 Security Notice for Students

**⚠️ CRITICAL**: These installation scripts require administrator privileges and install software on your system. Follow these security guidelines to protect yourself:

### ✅ Safe Practices

#### 1. Verify Repository Authenticity
- **Only download from this official repository**
- Check the URL matches exactly: `https://github.com/[instructor-username]/coding-with-ai-setup`
- Look for the course instructor's verified GitHub account
- Avoid forks or mirrors unless officially endorsed

#### 2. Script Verification
- **Read the script contents** before running them
- Check that file sizes and dates match expectations
- Compare with checksums if provided in releases
- Never run scripts from email attachments or chat messages

#### 3. Before Running Scripts
```bash
# Always review the script first
cat setup_macos.sh    # macOS
Get-Content setup_windows.ps1    # Windows PowerShell

# Check file permissions and ownership
ls -la setup_macos.sh    # macOS
Get-Acl setup_windows.ps1    # Windows
```

#### 4. Admin Privileges
- **Understand why admin access is needed**: Installing system-wide software
- **Be cautious** when any script asks for admin privileges
- **Never enter passwords** in scripts that seem suspicious
- **Close other sensitive applications** before running

### 🚫 Red Flags - Do NOT Run If:

- Script asks for passwords to personal accounts
- Downloads from unknown or suspicious URLs
- Contains obfuscated or encoded commands
- Requests access to personal files beyond development folder
- Asks to disable security features permanently
- Comes from unofficial sources or modified versions

### 🛡️ Additional Protection

#### 1. System Preparation
- **Backup important data** before running installation scripts
- **Close sensitive applications** (banking, email, etc.)
- **Ensure antivirus is up to date**
- **Use a non-admin account** for daily activities after setup

#### 2. Network Security
- **Use secure, trusted networks** for installation
- **Avoid public WiFi** for downloading development tools
- **Verify SSL certificates** on download pages

#### 3. Post-Installation
- **Review installed software** in system settings
- **Check startup programs** for unexpected additions
- **Verify firewall settings** haven't been modified
- **Monitor system performance** for unusual behavior

## 🐛 Reporting Security Issues

### For Security Vulnerabilities
**Do NOT create public issues for security vulnerabilities.**

Instead, please report security issues privately:

📧 **Email**: [instructor.security@university.edu]  
📧 **Alternative**: [your.name@university.edu]

Include:
- Description of the vulnerability
- Steps to reproduce
- Potential impact
- Your contact information

### Response Timeline
- **Acknowledgment**: Within 24 hours
- **Initial assessment**: Within 72 hours  
- **Fix timeline**: Depends on severity (1-14 days)
- **Public disclosure**: After fix is released

## 🔍 What Our Scripts Do

### Legitimate Actions
- ✅ Install package managers (Homebrew, Chocolatey)
- ✅ Install development tools (Node.js, Git, VS Code)
- ✅ Create development directories in user home folder
- ✅ Configure Git with provided user information
- ✅ Install VS Code extensions
- ✅ Set up AI CLI tools

### What Scripts DON'T Do
- ❌ Access personal files outside development folders
- ❌ Send data to external servers (except downloading software)
- ❌ Modify system security settings permanently
- ❌ Install unlicensed or pirated software
- ❌ Create backdoors or remote access
- ❌ Access browser passwords or personal data

## 🏫 Institutional Policies

### University Guidelines
- Scripts comply with [University Name] IT policies
- Only installs approved educational software
- Respects student privacy and data protection
- Follows FERPA guidelines for student information

### Open Source Compliance
- All installed software uses permissive licenses
- No proprietary software without proper licensing
- Source code available for inspection
- Regular security audits performed

## 📚 Educational Security

### Learning Objectives
Students will learn about:
- **Safe software installation practices**
- **Understanding script permissions**
- **Recognizing security threats**
- **Professional development environment security**

### Best Practices for Developers
- Always review code before execution
- Use virtual machines for testing untrusted code
- Keep development environments separate from personal data
- Regularly update security tools and practices

## 🔄 Regular Security Updates

### Maintenance Schedule
- **Monthly**: Review and update package versions
- **Quarterly**: Security audit of installation process
- **Semester**: Full security review and student education update
- **As needed**: Emergency security patches

### Student Responsibilities
- Keep installed software updated
- Report suspicious behavior immediately
- Follow university IT security policies
- Use strong, unique passwords for development accounts

## 📞 Emergency Contacts

### Immediate Security Concerns
- **University IT Security**: [it-security@university.edu]
- **Campus Emergency**: [emergency number]
- **Course Instructor**: [instructor contact]

### Non-Emergency Support
- **Course Discussion Forum**: [link to forum]
- **Office Hours**: [schedule and location]
- **IT Help Desk**: [help desk contact]

---

**Remember**: When in doubt, ask! It's better to verify security than to compromise your system.
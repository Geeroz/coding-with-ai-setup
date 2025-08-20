# GitHub Issue Templates

Create these files in your repository under `.github/` folder:

## 1. Bug Report Template
**File**: `.github/ISSUE_TEMPLATE/bug_report.md`

```markdown
---
name: Bug report
about: Create a report to help us improve the installation scripts
title: '[BUG] '
labels: 'bug'
assignees: ''
---

## 🐛 Bug Description
A clear and concise description of what the bug is.

## 💻 Environment
- **Operating System**: [e.g., macOS 13.1, Windows 11]
- **Script Version**: [e.g., v1.2.0]
- **Terminal/Shell**: [e.g., Terminal.app, PowerShell, Command Prompt]
- **Network**: [e.g., University WiFi, Home network, Corporate]

## 🔄 Steps to Reproduce
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

## ❌ Error Message
```
Paste the exact error message here
```

## ✅ Expected Behavior
A clear and concise description of what you expected to happen.

## 📸 Screenshots
If applicable, add screenshots to help explain your problem.

## 🔍 Additional Context
- Is this your first time running the script?
- Did you modify the script in any way?
- Are you behind a corporate/school firewall?
- Any antivirus software running?
- Previous installation attempts?

## 🆘 Attempted Solutions
What troubleshooting steps have you already tried?
- [ ] Restarted terminal
- [ ] Checked internet connection  
- [ ] Ran as administrator
- [ ] Reviewed troubleshooting guide
- [ ] Other: ___________

## 📞 Urgent?
- [ ] This is blocking my coursework
- [ ] This can wait for the next class
- [ ] Just a suggestion for improvement
```

## 2. Feature Request Template  
**File**: `.github/ISSUE_TEMPLATE/feature_request.md`

```markdown
---
name: Feature request
about: Suggest an idea for improving the installation scripts
title: '[FEATURE] '
labels: 'enhancement'
assignees: ''
---

## 💡 Feature Description
A clear and concise description of what you want to happen.

## 🎯 Problem Statement
What problem does this solve? Is your feature request related to a problem?

## 💭 Proposed Solution
Describe the solution you'd like to see implemented.

## 🔀 Alternative Solutions
Describe any alternative solutions or features you've considered.

## 🎓 Educational Value
How would this feature benefit students in the course?

## 🔧 Implementation Ideas
If you have technical suggestions for implementation, share them here.

## 📋 Additional Context
Add any other context, screenshots, or examples about the feature request.

## 🗳️ Student Interest
- [ ] I would use this feature
- [ ] My classmates have asked for this
- [ ] This addresses a common class question
- [ ] This would improve the learning experience
```

## 3. Help/Question Template
**File**: `.github/ISSUE_TEMPLATE/help_question.md`

```markdown
---
name: Help/Question
about: Ask for help with installation or setup
title: '[HELP] '
labels: 'question'
assignees: ''
---

## ❓ Question
What do you need help with?

## 🔍 What I've Tried
Please describe what you've already attempted:
- [ ] Read the README
- [ ] Checked troubleshooting guide
- [ ] Searched existing issues
- [ ] Asked classmates
- [ ] Tried basic troubleshooting steps

## 💻 Environment
- **Operating System**: [e.g., macOS 13.1, Windows 11]
- **Script Version**: [e.g., v1.2.0]

## 📋 Current Status
Where are you in the installation process?
- [ ] Haven't started yet
- [ ] Script downloaded but won't run  
- [ ] Script runs but fails at specific step
- [ ] Installation completed but tools don't work
- [ ] Everything installed, need help with next steps

## 🎯 Specific Issue
Describe the specific step or tool you need help with.

## ⏰ Timeline
- [ ] Need help before next class
- [ ] Can wait for office hours
- [ ] Not urgent, whenever convenient

## 📞 Preferred Help Method
- [ ] GitHub response is fine
- [ ] Would prefer email reply
- [ ] Can attend office hours
- [ ] Need real-time help (urgent)
```

## 4. General Issue Template
**File**: `.github/ISSUE_TEMPLATE/config.yml`

```yaml
blank_issues_enabled: false
contact_links:
  - name: 📚 Course Discussion Forum
    url: https://your-course-forum-link
    about: Ask questions and discuss with classmates
  - name: 📧 Direct Email Support  
    url: mailto:your.email@university.edu
    about: For private or urgent issues
  - name: 🕐 Office Hours
    url: https://your-office-hours-calendar
    about: Schedule in-person or video chat help
  - name: 📖 Troubleshooting Guide
    url: https://github.com/yourusername/coding-with-ai-setup/blob/main/TROUBLESHOOTING.md
    about: Check common solutions first
```

## 5. Pull Request Template
**File**: `.github/pull_request_template.md`

```markdown
## 📝 Description
Brief description of changes made.

## 🔄 Type of Change
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update

## 🧪 Testing
- [ ] Tested on macOS
- [ ] Tested on Windows  
- [ ] Tested on fresh virtual machine
- [ ] Manual testing completed
- [ ] All existing functionality still works

## 📋 Checklist
- [ ] My code follows the style guidelines of this project
- [ ] I have performed a self-review of my own code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] Any dependent changes have been merged and published

## 🎓 Educational Impact
How do these changes benefit students?

## 🔗 Related Issues
Fixes #(issue number)

## 📸 Screenshots (if applicable)
Add screenshots to help explain your changes.
```

## Usage Instructions

1. **Create the directory structure**:
   ```bash
   mkdir -p .github/ISSUE_TEMPLATE
   ```

2. **Add the template files** with the content above

3. **Customize the templates** with your specific:
   - University name
   - Course forum links  
   - Your email address
   - Office hours information

4. **Test the templates** by creating a test issue to ensure they work properly

These templates will help students provide better bug reports and make it easier for you to help them troubleshoot issues!
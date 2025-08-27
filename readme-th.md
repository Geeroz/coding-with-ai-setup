# 🚀 Coding with AI - การตั้งค่าสภาพแวดล้อมการพัฒนา

**สคริปต์การติดตั้งอย่างเป็นทางการสำหรับนักเรียน ideCode โคตร Vibe Workshop**

[![GitHub release](https://img.shields.io/github/release/yourusername/coding-with-ai-setup.svg)](https://github.com/yourusername/coding-with-ai-setup/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Windows-lightgrey.svg)](https://github.com/yourusername/coding-with-ai-setup)

> ⚠️ **ประกาศความปลอดภัย**: ใช้สคริปต์เหล่านี้จากที่เก็บอย่างเป็นทางการนี้เท่านั้น อย่าใช้สคริปต์การติดตั้งจากแหล่งที่ไม่รู้จักหรือ forks ที่ไม่ได้รับอนุญาต

## 📦 สิ่งที่จะถูกติดตั้ง

### เครื่องมือพัฒนาหลัก
- ✅ **Node.js & npm** - JavaScript runtime และ package manager
- ✅ **Git** - ระบบควบคุมเวอร์ชัน  
- ✅ **Visual Studio Code** - โปรแกรมแก้ไขโค้ดหลักพร้อมส่วนขยายที่จำเป็น

### เครื่องมือช่วยพัฒนา
- ✅ **Windows Terminal** (Windows เท่านั้น) - ประสบการณ์ terminal ที่ทันสมัย
- ✅ **ส่วนขยาย VS Code ที่จำเป็น**: รองรับ JSON, Prettier formatter, รองรับ TypeScript, ผู้ช่วย AI

### ผู้ช่วย AI สำหรับเขียนโค้ด (เลือกได้ตามต้องการ)
- 🤖 **Gemini CLI** - ผู้ช่วย AI สำหรับเขียนโค้ดของ Google
- 🧠 **Claude Code** - ผู้ช่วย AI สำหรับเขียนโค้ดของ Anthropic  
- 🌟 **Qwen-Code** - ผู้ช่วย AI สำหรับเขียนโค้ดของ Alibaba Cloud
- 🚀 **ติดตั้งทั้งหมด** - รับเครื่องมือ AI ทั้งสามตัวเพื่อความยืดหยุ่นสูงสุด

## 🖥️ เริ่มต้นอย่างรวดเร็ว

### สำหรับผู้ใช้ macOS

1. **ดาวน์โหลดสคริปต์**: [setup_macos.sh](./setup_macos.sh)
2. **เปิด Terminal** (`Cmd + Space` → พิมพ์ "Terminal")
3. **ไปยัง downloads**:
   ```bash
   cd ~/Downloads
   ```
4. **ทำให้สามารถรันได้และเรียกใช้**:
   ```bash
   chmod +x setup_macos.sh
   ./setup_macos.sh
   ```

### สำหรับผู้ใช้ Windows

1. **ดาวน์โหลดสคริปต์**: [setup_windows.ps1](./setup_windows.ps1)
2. **คลิกขวาที่ Start** → **"Windows PowerShell (Admin)"**
3. **ไปยัง downloads**:
   ```powershell
   cd $env:USERPROFILE\Downloads
   ```
4. **รันสคริปต์**:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; .\setup_windows.ps1
   ```

## 🛠️ การติดตั้งด้วยตนเอง (ทางเลือก)

หากคุณต้องการติดตั้งเครื่องมือด้วยตนเองหรือต้องการเวอร์ชันเฉพาะ นี่คือวิธีติดตั้งแต่ละส่วนประกอบแยกกัน:

### เครื่องมือพัฒนาหลัก

#### Node.js & npm
**macOS:**
```bash
# ใช้ Homebrew
brew install node

# หรือดาวน์โหลดจากเว็บไซต์อย่างเป็นทางการ
# ไปที่: https://nodejs.org/
```

**Windows:**
```powershell
# ใช้ Chocolatey
choco install nodejs

# ใช้ Winget
winget install OpenJS.NodeJS

# หรือดาวน์โหลดจากเว็บไซต์อย่างเป็นทางการ
# ไปที่: https://nodejs.org/
```

#### Git
**macOS:**
```bash
# ใช้ Homebrew
brew install git

# หรือดาวน์โหลดจากเว็บไซต์อย่างเป็นทางการ
# ไปที่: https://git-scm.com/
```

**Windows:**
```powershell
# ใช้ Chocolatey
choco install git

# ใช้ Winget
winget install Git.Git

# หรือดาวน์โหลดจากเว็บไซต์อย่างเป็นทางการ
# ไปที่: https://git-scm.com/
```

#### Visual Studio Code
**macOS:**
```bash
# ใช้ Homebrew
brew install --cask visual-studio-code

# หรือดาวน์โหลดจากเว็บไซต์อย่างเป็นทางการ
# ไปที่: https://code.visualstudio.com/
```

**Windows:**
```powershell
# ใช้ Chocolatey
choco install vscode

# ใช้ Winget
winget install Microsoft.VisualStudioCode

# หรือดาวน์โหลดจากเว็บไซต์อย่างเป็นทางการ
# ไปที่: https://code.visualstudio.com/
```

### ผู้ช่วย AI สำหรับเขียนโค้ด

#### Gemini CLI
**ทั้งสองแพลตฟอร์ม:**
```bash
# ติดตั้งผ่าน npm (หลังจากติดตั้ง Node.js แล้ว)
npm install -g @google-ai/generativelanguage-cli

# ยืนยันตัวตน
gemini auth login
```

#### Claude Code
**macOS:**
```bash
# ใช้ Homebrew
brew install anthropic/claude/claude

# หรือใช้ curl
curl -fsSL https://claude.ai/install.sh | sh
```

**Windows:**
```powershell
# ใช้ PowerShell
iwr https://claude.ai/install.ps1 | iex

# หรือดาวน์โหลดจาก GitHub releases
# ไปที่: https://github.com/anthropics/claude-code/releases
```

#### Qwen-Code
**ทั้งสองแพลตฟอร์ม:**
```bash
# ติดตั้งผ่าน pip
pip install qwen-code

# หรือผ่าน npm
npm install -g @alibaba/qwen-code

# ยืนยันตัวตน
qwen-code auth
```

### เครื่องมือช่วยพัฒนา

#### Windows Terminal (Windows เท่านั้น)
```powershell
# ใช้ Microsoft Store (แนะนำ)
# ค้นหา "Windows Terminal" ใน Microsoft Store

# ใช้ Winget
winget install Microsoft.WindowsTerminal

# ใช้ Chocolatey
choco install microsoft-windows-terminal
```

### ส่วนขยาย VS Code ที่จำเป็น
หลังจากติดตั้ง VS Code แล้ว ให้ติดตั้งส่วนขยายที่จำเป็นเหล่านี้:

```bash
# ติดตั้งส่วนขยายผ่าน command line
code --install-extension ms-vscode.vscode-json
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension github.copilot
code --install-extension anthropic.claude-dev
```

## ⚠️ ข้อกำหนดเบื้องต้น

### ข้อกำหนดของ macOS
- macOS 10.15 (Catalina) หรือใหม่กว่า
- สิทธิ์ผู้ดูแลระบบ
- การเชื่อมต่ออินเทอร์เน็ต
- พื้นที่ว่างในดิสก์อย่างน้อย 2GB

### ข้อกำหนดของ Windows  
- Windows 10 เวอร์ชัน 1903 หรือใหม่กว่า
- สิทธิ์ผู้ดูแลระบบ
- การเชื่อมต่ออินเทอร์เน็ต
- พื้นที่ว่างในดิสก์อย่างน้อย 2GB
- PowerShell 5.1 หรือใหม่กว่า

## 🔧 คุณสมบัติการติดตั้ง

### ✨ การตั้งค่าแบบโต้ตอบ
- **การกำหนดค่า Git** พร้อมการตรวจสอบชื่อและอีเมล
- **การเลือกผู้ช่วย AI** (แยกหรือเครื่องมือทั้งหมด)
- **ตัวบ่งชี้ความคืบหน้า** และการยืนยันความสำเร็จ
- **การจัดการข้อผิดพลาด** พร้อมข้อความที่เป็นประโยชน์

### 🎯 หลังการติดตั้ง
- **โครงสร้างโฟลเดอร์พัฒนา** สร้างโดยอัตโนมัติ
- **ส่วนขยาย VS Code** ติดตั้งและกำหนดค่าไว้แล้ว
- **ลิงก์สมัครสมาชิกบริการ** มีให้สำหรับ:
  - 🐙 **GitHub**: ควบคุมเวอร์ชันและความร่วมมือ
  - ⚡ **Surge**: การติดตั้งใช้งานไซต์แบบ static
  - 🔺 **Vercel**: การติดตั้งใช้งานเว็บแอปสมัยใหม่

## 📋 หลังการติดตั้ง

### 1. ตรวจสอบการติดตั้ง
```bash
node --version
git --version
code --version
```

### 2. กำหนดค่าเครื่องมือ AI
เลือกผู้ช่วย AI ที่คุณต้องการและทำตามขั้นตอนการตั้งค่า:
- **Gemini**: `npm run setup`
- **Claude**: `claude auth`
- **Qwen**: `qwen-code setup`

### 3. สมัครสมาชิกบริการ
ใช้ลิงก์ที่ให้ไว้ในตอนท้ายของการติดตั้ง:
- [สมัครสมาชิก GitHub](https://github.com/signup)
- [Surge](https://surge.sh)
- [สมัครสมาชิก Vercel](https://vercel.com/signup)

### 4. เริ่มโปรเจกต์แรกของคุณ
```bash
cd Development/projects
mkdir my-first-project
cd my-first-project
git init
code .
```

## 🆘 ต้องการความช่วยเหลือ?

### ปัญหาที่พบบ่อย
- **สคริปต์ไม่ทำงาน**: ตรวจสอบว่าคุณมีสิทธิ์ผู้ดูแลระบบ
- **การติดตั้งล้มเหลว**: ตรวจสอบให้แน่ใจว่ามีการเชื่อมต่ออินเทอร์เน็ตที่เสถียร
- **เครื่องมือ AI ไม่ทำงาน**: ตรวจสอบว่าต้องมีการยืนยันตัวตนหรือไม่

### รับการสนับสนุน
- 📖 ตรวจสอบ [คู่มือแก้ไขปัญหา](./TROUBLESHOOTING.md) ของเรา
- 🐛 [รายงานข้อบกพร่อง](https://github.com/yourusername/coding-with-ai-setup/issues/new?template=bug_report.md)
- 💬 [ถามคำถาม](https://github.com/yourusername/coding-with-ai-setup/discussions)
- 📧 ติดต่อ: [your.email@university.edu]

## 🔒 ความปลอดภัย

- อ่าน [นโยบายความปลอดภัย](./SECURITY.md) ของเรา
- ดาวน์โหลดจากที่เก็บอย่างเป็นทางการนี้เท่านั้น
- ตรวจสอบ checksums สำหรับรีลีสสำคัญ
- รายงานปัญหาความปลอดภัยเป็นความลับ

## 📚 ข้อมูลคอร์ส

**คอร์ส**: [ชื่อคอร์สของคุณ]  
**ผู้สอน**: [ชื่อของคุณ]  
**มหาวิทยาลัย**: [มหาวิทยาลัยของคุณ]  
**เทอม**: [เทอมปัจจุบัน]

## 📝 ลิขสิทธิ์

โปรเจกต์นี้ได้รับอนุญาตภายใต้ MIT License - ดู [LICENSE](LICENSE) ไฟล์สำหรับรายละเอียด

## 🤝 การมีส่วนร่วม

1. Fork repository
2. สร้าง feature branch
3. ทดสอบการเปลี่ยนแปลงของคุณอย่างละเอียด
4. ส่ง pull request

## 📊 ประวัติเวอร์ชัน

ดู [CHANGELOG.md](./CHANGELOG.md) สำหรับประวัติเวอร์ชันโดยละเอียด

---

**สร้างด้วย ❤️ สำหรับนักเรียนเขียนโค้ดทุกคน**

*มีคำถาม? ปัญหา? ติดต่อในช่วงเวลาสำนักงานหรือสร้าง GitHub issue!*
# 🐧 The Open Source Audit — LibreOffice

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=flat&logo=gnu-bash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-FCC624?style=flat&logo=linux&logoColor=black)
![License](https://img.shields.io/badge/License-MPL_2.0-blue?style=flat)
![Course](https://img.shields.io/badge/Course-Open_Source_Software-teal?style=flat)

---

## 👨‍🎓 Student Details

| Field | Details |
|---|---|
| **Name** | YASHWANT RAJ |
| **Registration Number** | 24BCY10176 |
| **University** | VIT Bhopal University |
| **Faculty** | Adarsh Patel |
| **Course** | Open Source Software (NGMC) |
| **Semester** | B.Tech 5th Semester (Winter 2026) |

---

## 📖 Project Description

This is my capstone project for the Open Source Software course at VIT Bhopal University. I chose **LibreOffice** as my focus software — a full office productivity suite licensed under the Mozilla Public License 2.0 (MPL 2.0).

The project covers the history and philosophy of LibreOffice (including its dramatic fork from OpenOffice.org in 2010), its Linux footprint, the broader FOSS ecosystem it belongs to, and a detailed comparison with Microsoft Office. It also includes five practical bash scripts that demonstrate key Linux concepts from Units 1–5.

This repository contains the full report, all five shell scripts, and supporting materials.

---

## 🛠️ Scripts Overview

| File | Description | Key Concepts |
|---|---|---|
| `01_system_identity.sh` | Generates a system identity report: distro, kernel, uptime, architecture, and a license note about LibreOffice. | Variables, command substitution `$()`, echo formatting |
| `02_package_inspector.sh` | Checks whether LibreOffice is installed using `dpkg` or `command -v`, then prints version info and a fun FOSS fact via a `case` statement. | `if-else`, `case`, `dpkg`, `grep`, `awk` |
| `03_disk_auditor.sh` | Loops through key system directories and reports permissions, ownership, size, and disk usage. Also checks for the LibreOffice user config directory. | `for` loop, arrays, `ls -ld`, `awk`, `du`, `df`, `cut` |
| `04_log_analyzer.sh` | Takes a log file and optional keyword as arguments, counts matching lines, and prints the last 5 matches. Includes a retry loop for empty files. | `$1`/`$2`, default values, `while read`, file tests, `grep`, `tail` |
| `05_manifesto_generator.sh` | Interactively asks three questions, then assembles and saves a personalized open-source manifesto to a `.txt` file. | `read`, file redirection `>` and `>>`, command substitution in filenames |

---

## 🚀 How to Run the Scripts

### Step 1 — Clone the repository

```bash
git clone https://github.com/yashwantraj/oss-audit-24BCY10176.git
cd oss-audit-24BCY10176
```

### Step 2 — Make all scripts executable

```bash
chmod +x *.sh
```

### Step 3 — Run individual scripts

**Scripts 1, 2, 3, and 5** (run directly):

```bash
./01_system_identity.sh
./02_package_inspector.sh
./03_disk_auditor.sh
./05_manifesto_generator.sh
```

**Script 4** (requires a log file argument):

```bash
# Search for "error" in syslog (default keyword)
./04_log_analyzer.sh /var/log/syslog

# Search for a custom keyword
./04_log_analyzer.sh /var/log/syslog warning

# Use any text file you have
./04_log_analyzer.sh ~/mylog.txt failed
```

---

## 💻 Requirements

- A Linux-based operating system (tested on Ubuntu 22.04)
- Bash shell (version 4.x or later)
- Standard GNU core utilities: `awk`, `grep`, `cut`, `du`, `df`, `dpkg`
- LibreOffice installed (for scripts 2 and 3 to give the most useful output)

---

## 📋 Sample Output — Script 1

```
================================================
    Open Source Audit - YASHWANT RAJ
    Reg: 24BCY10176 | VIT Bhopal University
================================================
Software Choice  : LibreOffice
Distribution     : GNU/Linux
Kernel Version   : 5.15.0-91-generic
Architecture     : x86_64
Hostname         : vit-lab-machine
Current User     : yashwant
Home Directory   : /home/yashwant
Uptime           : up 3 hours, 42 minutes
------------------------------------------------
License Note:
LibreOffice is distributed under the MPL v2.0 license.
This Linux OS is distributed under the GPL v2 license.
================================================
```

---

## 📁 Repository Structure

```
oss-audit-24BCY10176/
├── 01_system_identity.sh       # Script 1: System Identity Report
├── 02_package_inspector.sh     # Script 2: FOSS Package Inspector
├── 03_disk_auditor.sh          # Script 3: Disk and Permission Auditor
├── 04_log_analyzer.sh          # Script 4: Log File Analyzer
├── 05_manifesto_generator.sh   # Script 5: Manifesto Generator
├── OSS_Capstone_YashwantRaj_24BCY10176.docx  # Full project report
└── README.md                   # This file
```

---

## 📚 Software Analyzed: LibreOffice

**LibreOffice** is a free and open-source office productivity suite maintained by The Document Foundation. It was forked from OpenOffice.org in 2010 after Oracle acquired Sun Microsystems, and has since grown into the most widely used open-source office suite in the world.

Key facts:
- **License:** Mozilla Public License 2.0 (MPL 2.0), dual-licensed with LGPLv3
- **Default format:** Open Document Format (ODF), an ISO standard
- **Components:** Writer (word processing), Calc (spreadsheets), Impress (presentations), Draw, Base, Math
- **Platforms:** Linux, Windows, macOS, Android (viewer)
- **Governance:** The Document Foundation (a German non-profit Stiftung)

---

## 🎯 Key Takeaways

Working on this project gave me a much better understanding of how open-source software actually works — not just technically, but philosophically and organizationally. The story of LibreOffice is a good example of how a community can take back control of software they depend on. The license analysis made me realize that licensing is genuinely strategic, not just legal boilerplate. And writing the shell scripts made the Linux directory structure feel real rather than abstract.

---

## About

B.Tech 5th Semester — Open Source Software Capstone (Winter Sem 2026)  
VIT Bhopal University | Faculty: Adarsh Patel

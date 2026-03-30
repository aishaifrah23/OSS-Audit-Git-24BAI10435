#  Project Sentinel: A Forensic Security Audit of Git Integrity

![Git Logo](https://git-scm.com/images/logomark-colored.png)

**Researcher Identification:** Aisha Ifrah  
**Registration Number:** 24BAI10435  
**Institution:** Vellore Institute of Technology (VIT), Bhopal  
**Software Audited:** Git (Distributed Version Control System)

---

##  Project Overview

This repository contains five specialized Bash scripts developed for the **Open Source Software Capstone Project (2026)**. Unlike general-purpose audits, this study emphasizes **Git Security Hardening** and **Data Integrity** within POSIX-compliant environments.

The project examines Git's SHA-1 cryptographic hashing architecture, which prevents code tampering and ensures community sovereignty across all five OSS curriculum units.

---

## Repository Contents & Forensic Logic

Each script targets a specific OSS curriculum unit with system forensics focus:

| File | Category | Forensic Utility & Logic |
|:---|:---|:---|
| `script1.sh` | **Baseline** | Verifies kernel integrity and privilege levels (EUID) for audit baseline |
| `script2.sh` | **Integrity** | Locates Git binary path and validates FOSS licensing via case-matching |
| `script3.sh` | **Hardening** | Scans system paths for world-writable permissions posing repository risks |
| `script4.sh` | **Forensics** | Parses logs for "denied"/"unauthorized" patterns using memory-efficient loops |
| `script5.sh` | **Sovereignty** | Generates user-driven manifesto for data privacy and autonomy |

---

## Execution Guide (Step-by-Step)

**For Linux-compatible systems or Git Bash:**

```bash
# 1. Clone Repository
git clone https://github.com/aishaifrah23/oss-audit-24BAI10435.git
cd oss-audit-24BAI10435

# 2. Initialize Permissions
chmod +x *.sh

# 3. Execute Forensic Sequence
./script1.sh                 # Environment Baseline
./script2.sh                 # Binary Integrity Check
./script3.sh                 # Hardening Audit
./script4.sh git_audit.log denied  # Log Forensics
./script5.sh                 # Sovereignty Manifesto
```

---

##  Environment & Troubleshooting

**Tested Environment:**
- **Hardware:** Lenovo Desktop (Windows 11)
- **Terminal:** Git Bash (MINGW64)
- **Shell:** Bash 5.2.21

**Technical Pivot:** Selected Git Bash for POSIX compliance after local network restrictions (HTTP 403 Forbidden) blocked standard WSL/Ubuntu installation in Bhopal region.

---

##  Technical Artifacts

- **`git_audit.log`** - System activity snapshot for Forensic Log Analyzer validation
- **`test.log`** - Synthetic data for stress-testing keyword detection logic

---

##  Security Focus Areas

- **SHA-1 Hash Integrity** - Prevents undetected code tampering
- **Permission Hardening** - Eliminates world-writable repository risks  
- **Access Pattern Forensics** - Detects unauthorized Git operations

---

##  Contact & Submission Details

**Researcher:** Aisha Ifrah  
**Registration No:** 24BAI10435  
**Email:** [aisha.24bai10435@vitbhopal.ac.in](mailto:aisha.24bai10435@vitbhopal.ac.in)

** Project Status:** VIT Bhopal OSS Capstone 2026  

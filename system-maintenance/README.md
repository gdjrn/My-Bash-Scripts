# My Bash Scripts 🚀

A collection of Bash automation tools designed to simplify Linux system administration and infrastructure management.

This repository reflects my workflow as an **IT Systems Administrator (ASIX)**, focusing on operational efficiency, server maintenance, and DevOps culture.

## 📂 Project Structure

### 📁 system-maintenance/
Essential tools for system health diagnostics and management.

*   **`system-maintenance.sh`**: An interactive menu-driven script for core tasks:
    *   **Privilege Control**: Automatically validates root permissions before execution.
    *   **Resource Monitoring**: Quick access to disk space (`df -h`) and RAM usage (`free -m`).
    *   **Network Diagnostics**: View active connections and listening ports using `ss`.
    *   **Log Maintenance**: Automated system journal cleanup (`journalctl`) for entries older than 2 days.
    *   **Process Management**: Lists the top 10 CPU-consuming processes using `ps`.

## 🛠️ Installation & Usage

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/gdjrn/My-Bash-Scripts.git
    cd My-Bash-Scripts
    ```

2.  **Navigate to the tool and set permissions:**
    
```bash
    cd system-maintenance
    chmod +x system-maintenance.sh
    ```

3.  **Run the script:**
    *Note: Root privileges are required for most functions.*
    ```bash
    sudo ./system-maintenance.sh
    ```

## 📋 Requirements
*   Linux-based Operating System.
*   `sudo` privileges for administration tasks.

## 📄 License
This project is licensed under the **MIT License**. Feel free to use, modify, and adapt it to your needs.

---
**Profile:** Systems Administrator (ASIX) | Automation, Linux, and Docker enthusiast.

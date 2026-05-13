# 🚛 The Dynamic Fleet Manager

A robust Bash-based CLI tool for real-time vehicle registration and fleet categorization. This project demonstrates advanced scripting logic, including hybrid memory/disk duplicate checking and automatic data classification.

## ✨ Key Features

* **Hybrid Duplicate Validation**: Prevents data collision by checking inputs against both current session memory (Arrays) and historical records (`licenses_plates.txt`).
* **Smart Categorization**: Automatically classifies vehicles into `[HEAVY]` or `[LIGHT]` based on license plate string length (threshold: 7 characters).
* **Data Integrity**: Implements input sanitization to prevent empty records and handles file creation automatically.
* **Persistence**: Generates independent logs and total vehicle counts (`all_vehicles.txt`) for easy auditing.

## 🚀 How to Use

1.  **Give execution permissions**:
    ```bash
    chmod +x the_dynamic_fleet_manager.sh
    ```
2.  **Run the script**:
    ```bash
    ./the_dynamic_fleet_manager.sh
    ```
3.  **Register vehicles**: Type the license plate when prompted.
4.  **Finish**: Type `finish` to save all data and exit the program.

## 🛠️ Technical Stack & Concepts

* **Language**: Bash (Bourne Again SHell).
* **Tools**: `grep` (Regex matching with line-end anchors), `wc` (Data counting).
* **Data Structures**: Dynamic Bash Arrays for temporary storage.
* **I/O Operations**: Standard streams, input/output redirection, and file persistence.
* **UI/UX**: ANSI escape codes for colored error messaging and warnings.

---
*Developed as part of my 10-day Bash & DevOps learning challenge.*

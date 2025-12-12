# CampusConnect
First responsive flutter app

💾 Final Markdown Code Block
Copy all of the text below, including the image placeholders, and paste it into your README.md file.
# 🎓 CampusConnect Mobile App (Flutter)

[![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Language-Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge)](https://github.com/Aptech-Flutter-Project-Thr/CampusConnect)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

> A modern, responsive mobile application for students, built to foster a connected and vibrant campus community across all devices.

---

## 📖 Table of Contents
* [✨ Features Highlights](#-features-highlights)
* [⚙️ Tech Stack](#️-tech-stack)
* [📂 Project Structure](#-project-structure)
* [▶️ How to Run Locally](#️-how-to-run-locally)
* [🎨 Custom Color Palette](#-custom-color-palette)

---

## ✨ Features Highlights

| Feature Area | Description | Look for |
| :--- | :--- | :--- |
| **Responsive Design** | A unique **3-column layout** on desktop/web (Guide \| Form/Main \| Tips) that collapses intuitively on mobile devices. | `responsive_layout.dart` |
| **Dark UI/UX** | Clean, custom dark user interface for an immersive experience, utilizing your specific color palette. | Mobile and Web Screenshots |
| **Profile Setup** | A guided, multi-step process for new users to set up a username, educational rank, institution, and profile photo. | See the `Setup Your Profile` screen. |
| **Cross-Platform** | Built with a single codebase that supports **Android, iOS, Web, macOS, Windows, and Linux**. | `flutter run -d <platform>` |
| **Modularity** | Utilizes reusable custom widgets for inputs, cards, and navigation for faster development and maintenance. | `custom_widgets/` folder |

---

## ⚙️ Tech Stack

* **Primary Framework:** **Flutter** (for native cross-platform UI development)
* **Language:** **Dart**

---

## 📂 Project Structure

This structure is designed for clarity, especially around the responsive layout logic:

```text
lib/
├── columns/                  # Individual column views for the 3-column layout
│   ├── left_column.dart
│   ├── center_column.dart
│   └── right_column.dart
├── constants/                # Core configurations, including your color palette
│   └── colors.dart           
├── custom_widgets/           # All reusable UI components (Inputs, Cards, Buttons)
│   ├── left.dart
│   ├── center.dart
│   └── right.dart
├── responsive_layout.dart    # The main logic that handles screen size changes
└── main.dart                 # Application entry point and initial setup

▶️ How to Run Locally
Prerequisites
You must have the following installed to run this project:
 * Flutter SDK (\ge 3.19 recommended)
 * Dart SDK
Installation & Execution
 * Clone the Repository
   git clone [https://github.com/Aptech-Flutter-Project-Thr/CampusConnect.git](https://github.com/Aptech-Flutter-Project-Thr/CampusConnect.git)
cd CampusConnect

 * Get Dependencies
   flutter pub get

 * Run the Application
   flutter run

Supports All Platforms:
To launch the app on a specific target:
flutter run -d chrome     # Run on Web/Chrome
flutter run -d windows    # Run on Desktop (Windows)
flutter run -d linux      # Run on Desktop (Linux)
flutter run -d android    # Run on Android Emulator/Device
flutter run -d ios        # Run on iOS Simulator/Device

🎨 Custom Color Palette
These colors, defined in constants/colors.dart, establish the app's modern dark theme:
| Color Name | Hex Code | Purpose | Example |
|---|---|---|---|
| Primary Blue | #02569B | Main branding/Interactive elements | <img src="https://www.google.com/search?q=https://via.placeholder.com/20/02569B/000000%3Ftext%3D+" style="border-radius: 4px;"> |
| Accent Teal | #00BCD4 | Highlights/Secondary accents | <img src="https://www.google.com/search?q=https://via.placeholder.com/20/00BCD4/000000%3Ftext%3D+" style="border-radius: 4px;"> |
| Dark Background | #1E1E1E | Primary screen background | <img src="https://www.google.com/search?q=https://via.placeholder.com/20/1E1E1E/000000%3Ftext%3D+" style="border-radius: 4px;"> |
| Card/Surface | #2C2C2C | Background for panels, cards, and input fields | <img src="https://www.google.com/search?q=https://via.placeholder.com/20/2C2C2C/000000%3Ftext%3D+" style="border-radius: 4px;"> |
| Light Text | #FFFFFF | Standard text color | <img src="https://www.google.com/search?q=https://via.placeholder.com/20/FFFFFF/000000%3Ftext%3D+" style="border-radius: 4px;"> |
🛡️ License
This project is licensed under the MIT License - see the LICENSE.md file for details.

### ⏭️ Final Instructions:

1.  **Create/Open:** Create a file named **`README.md`** in the root of your project directory.
2.  **Paste:** Paste the entire block of code above into that file.
3.  **Commit & Push:** Commit and push the `README.md` file to your Git repository.

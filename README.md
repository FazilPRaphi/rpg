<div align="center">

# ⚔️ RPG App ⚔️

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![GitHub Release](https://img.shields.io/github/v/release/FazilPRaphi/rpg?style=for-the-badge&color=2ea44f)](https://github.com/FazilPRaphi/rpg/releases/latest)
[![GitHub Stars](https://img.shields.io/github/stars/FazilPRaphi/rpg?style=for-the-badge&color=gold)](https://github.com/FazilPRaphi/rpg/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

**A professional, cross-platform Role-Playing Game character manager and creator built with Flutter and Firebase.**

[🚀 Features](#-key-features) • [📱 Download APK](#-apk-download) • [🛠️ Tech Stack](#-tech-stack) • [⚙️ Installation](#-getting-started) • [🤝 Contributing](#-contributing)

<sub>⭐ Support this project by leaving a star! It helps visibility and motivates further development.</sub>

</div>

---

## 📝 Project Overview

**RPG App** is a beautifully designed, high-performance Flutter mobile application tailored for role-playing game enthusiasts. It serves as a modern tool for creating, customizing, and managing game characters. Leveraging Firebase as a real-time database, users can seamlessly manage vocations, character stats, and custom skills under a clean and highly responsive user interface.

Whether you are a developer looking for a reference implementation of a production-ready Flutter app or a gamer looking to manage your custom characters, RPG App provides a scalable, enterprise-grade architecture that showcases modern mobile development practices.

---

## 🚀 Key Features

*   **📱 Flutter Mobile Application** – High-performance, cross-platform application providing a native look and feel on iOS and Android.
*   **🔥 Firebase Integration** – Seamless connection with Cloud Firestore for real-time synchronization, data persistence, and robust data management.
*   **🎨 Responsive UI** – Designed with modern aesthetics including typography support (Google Fonts) and responsive layouts that look elegant on various device resolutions.
*   **👾 Custom Application Icon** – Fully branded application with custom launcher icons implemented for both Android and iOS platforms.
*   **📦 Android APK Releases** – Continuously integrated and published APK releases available instantly via GitHub Releases.
*   **🏗️ Clean & Scalable Architecture** – Built utilizing state-management best practices (Provider Pattern), separation of models, screens, and services to support maintainable growth.

---

## 📸 Screenshots

Here is a visual overview of the application flow:

| 🏠 Home Screen | ➕ Character Creation | 👤 Character Profile |
| :---: | :---: | :---: |
| <img src="https://via.placeholder.com/250x500.png?text=Home+Screen" width="250" alt="Home Screen"/> | <img src="https://via.placeholder.com/250x500.png?text=Create+Character" width="250" alt="Create Character"/> | <img src="https://via.placeholder.com/250x500.png?text=Character+Profile" width="250" alt="Character Profile"/> |
| *View your list of characters* | *Select vocations & customize stats* | *Inspect level, skills, and attributes* |

---

## 🛠️ Tech Stack

| Technology | Category | Description |
| :--- | :--- | :--- |
| **[Flutter](https://flutter.dev)** | Framework | Cross-platform UI toolkit for building natively compiled applications. |
| **[Dart](https://dart.dev)** | Language | Client-optimized, object-oriented language supporting fast compilation. |
| **[Cloud Firestore](https://firebase.google.com/docs/firestore)** | Database | Flexible, scalable NoSQL cloud database to store and sync game data. |
| **[Provider](https://pub.dev/packages/provider)** | State Management | A wrapper around InheritedWidget to make state management easy and reusable. |
| **[Google Fonts](https://pub.dev/packages/google_fonts)** | Styling | Custom typography to deliver high-quality, professional game UI. |

---

## 📁 Project Structure

Below is the directory structure of the repository, showcasing the clean separation of concerns:

```text
rpg/
├── android/            # Android platform-specific configurations
├── ios/                # iOS platform-specific configurations
├── lib/                # Source code directory
│   ├── models/         # Data models (Character, Skills, Stats, Vocation)
│   ├── screens/        # UI Screens (Home, Create, Profile)
│   ├── services/       # Firebase database & backend services
│   ├── shared/         # Reusable widgets, styling helpers, & constants
│   ├── main.dart       # App entrypoint
│   └── theme.dart      # Application global styling & dark/light themes
├── assets/             # Images, vocation drawings, and skill icons
├── test/               # Unit, widget, and integration tests
├── pubspec.yaml        # Project dependencies & configurations
└── README.md           # Documentation
```

---

## 📱 APK Download

Get the latest stable release of the Android package directly from the releases page:

<div align="center">

[📱 Download Latest APK](https://github.com/FazilPRaphi/rpg/releases/latest)

</div>

---

## ⚙️ Getting Started

Follow these steps to set up and run the project locally on your machine.

### Prerequisites

Ensure you have the following installed on your system:
*   [Flutter SDK](https://docs.flutter.dev/get-started/install) (version `^3.12.1` or later)
*   [Dart SDK](https://dart.dev/get-started)
*   Android Studio / VS Code / Xcode
*   An active Android/iOS emulator or physical test device

### Running Locally

1. **Clone the repository:**
   ```bash
   git clone https://github.com/FazilPRaphi/rpg.git
   cd rpg
   ```

2. **Retrieve dependencies:**
   ```bash
   flutter pub get
   ```

3. **Set up Firebase (Optional for local testing):**
   * Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/).
   * Register your Android/iOS app configurations.
   * Place the generated configuration files (e.g., `google-services.json` / `GoogleService-Info.plist`) in their respective directories, or configure utilizing FlutterFire CLI.

4. **Launch the application:**
   ```bash
   flutter run
   ```

---

## 🛠️ Build APK

To generate a standalone, optimized Android release APK, execute the following command:

```bash
flutter build apk --release
```

The compiled release package will be generated at:
`build/app/outputs/flutter-apk/app-release.apk`

---

## 🔮 Future Improvements

- [ ] **Multiplayer Mode** – Real-time co-op or player-versus-player character battles.
- [ ] **Offline Cache** – Integrate Local Cache SQLite/Hive to support offline edits.
- [ ] **Character Inventory** – Expand character attributes to support equipment, item inventory, and shop services.
- [ ] **Firebase Authentication** – Add user authentication (Google, Email, and Guest Sign-in).
- [ ] **Custom Avatars** – Enable profile image uploads to Firebase Storage.

---

## 🤝 Contributing

Contributions make the open-source community an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

Distributed under the **MIT License**. See `LICENSE` for more information.

---

## 👤 Author

**Fazil P Raphi**
*   **GitHub**: [@FazilPRaphi](https://github.com/FazilPRaphi)
*   **LinkedIn**: [Fazil P Raphi](https://www.linkedin.com/in/fazil-p-raphi)

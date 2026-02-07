# Concentrate ON 🎯

A powerful Flutter-based focus mode application designed to help you stay concentrated, boost productivity, and minimize distractions. Built with the Pomodoro Technique in mind, this app keeps your device awake during focus sessions and tracks your productivity journey.

![Flutter](https://img.shields.io/badge/Flutter-3.7.2-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)
![License](https://img.shields.io/badge/License-MIT-green)

## ✨ Features

### 🎯 Core Functionality

1. **Focus Sessions**
   - Start/stop focus sessions with a single tap
   - Real-time countdown timer with circular progress indicator
   - Automatic wake lock management
   - Session completion tracking

2. **Statistics Dashboard**
   - Total focus time (hours and minutes)
   - Completed sessions count
   - Average session duration
   - Motivational messages based on progress

3. **Settings Management**
   - Adjustable focus duration (5-60 minutes)
   - Customizable short break (1-15 minutes)
   - Configurable long break (5-30 minutes)
   - Persistent preferences

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.7.2 or higher)
- Dart SDK (3.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Git

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/madhav2348/concentrate_on
cd concentrate_on
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
# For development
flutter run

# For specific platform
flutter run -d android       # Android
flutter run -d ios           # iOS
```

### Building for Production

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release
```
## 📦 Dependencies

### Core Packages
- `wakelock_plus` - Keep device screen awake during focus sessions
- `provider` - State management solution
- `shared_preferences` - Local data persistence

### UI Packages
- `circular_countdown_timer` - Visual timer component
- `cupertino_icons` - iOS-style icons

### Future Packages (Planned)
- `flutter_local_notifications` - Session notifications
- `audioplayers` - Sound alerts for session completion

## 🏗️ Project Structure

``` bash
lib/
├── main.dart                 # App entry point
├── models/
│   └── focus_session.dart    # Focus session data model
├── providers/
│   └── focus_provider.dart   # State management for focus sessions
└── screens/
    ├── home_screen.dart      # Main timer interface
    ├── settings_screen.dart  # App settings
    └── statistics_screen.dart # Stats dashboard
```

## 🔮 Future Integrations

[Checkout AI_AI_INTEGRATION_GUIDE.md](https://github.com/madhav2348/concentrate_on/blob/main/AI_INTEGRATION_GUIDE.md)


## 🛠️ Development

### Running Tests

```bash
flutter test
```

### Code Analysis

```bash
flutter analyze
```

### Format Code

```bash
flutter format .
```

## 🤝 Contributing
[Checkout CONTRIBUTING.md](https://github.com/madhav2348/concentrate_on/blob/main/CONTRIBUTIING.md)


## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

**Madhav**
- GitHub: [@madhav2348](https://github.com/madhav2348)

## 🙏 Acknowledgments

- Inspired by the Pomodoro Technique by Francesco Cirillo
- Built with Flutter and Material Design 3
- Icons from Material Icons and Cupertino Icons

## 📞 Support

If you have any questions or need help, please open an issue on GitHub.

---

**Stay Focused. Stay Productive. Concentrate ON!** 🚀

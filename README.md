# Concentrate ON 🎯

A powerful Flutter-based focus mode application designed to help you stay concentrated, boost productivity, and minimize distractions. Built with the Pomodoro Technique in mind, this app keeps your device awake during focus sessions and tracks your productivity journey.

![Flutter](https://img.shields.io/badge/Flutter-3.7.2-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)
![License](https://img.shields.io/badge/License-MIT-green)

## ✨ Features

### Current Implementation

- **⏱️ Pomodoro Timer**: Customizable focus sessions with visual countdown
- **🔒 Wake Lock**: Keeps your screen awake during focus sessions to prevent interruptions
- **📊 Statistics Tracking**: Monitor your productivity with detailed session statistics
- **⚙️ Customizable Settings**: Adjust focus duration, short breaks, and long breaks
- **🎨 Material Design 3**: Modern, clean UI with light and dark theme support
- **💾 Persistent Data**: Your stats and settings are saved locally
- **📱 Cross-Platform**: Works on Android, iOS, Web, Windows, macOS, and Linux

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
flutter run -d chrome        # Web
flutter run -d windows       # Windows
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

### Planned Features

1. **🤖 AI-Powered Task Management**
   - Natural language task creation via prompts
   - AI-suggested task prioritization
   - Smart break recommendations based on focus patterns
   - Personalized productivity insights

2. **🔕 Do Not Disturb Integration**
   - Automatic DND mode activation during focus sessions
   - System notification management
   - Custom notification filtering

3. **🚫 App Blocking**
   - Block distracting apps during focus time
   - Customizable app blocklist
   - Usage tracking and analytics
   - Gentle reminders when accessing blocked apps

4. **🔔 Enhanced Notifications**
   - Session start/end notifications
   - Break reminders
   - Daily productivity summaries
   - Achievement notifications

5. **📈 Advanced Analytics**
   - Weekly/monthly productivity reports
   - Focus time heatmaps
   - Productivity trends and patterns
   - Export data functionality

7. **🎵 Ambient Sounds**
   - Focus-enhancing background sounds
   - White noise, nature sounds, lo-fi music
   - Custom sound playlists

### AI Task Creation Example

```
User: "Create tasks for my project presentation"

AI Response:
✓ Research topic and gather data (25 min)
✓ Create presentation outline (15 min)
✓ Design slides (45 min)
✓ Practice presentation (20 min)
✓ Review and refine (15 min)
```

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

## 📱 Platform-Specific Setup

### Android
- Minimum SDK: 21 (Android 5.0)
- Target SDK: 34 (Android 14)
- Permissions: WAKE_LOCK (automatically handled)

### iOS
- Minimum iOS version: 12.0
- No additional permissions required for wake lock

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

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

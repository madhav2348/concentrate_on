# Setup Checklist - Concentrate ON

## ✅ Pre-Flight Checklist

Use this checklist to ensure everything is set up correctly before running the app.

---

## 📋 Development Environment

### Required Software
- [ ] Flutter SDK (3.7.2 or higher) installed
- [ ] Dart SDK (3.0 or higher) installed
- [ ] Git installed
- [ ] Code editor (VS Code, Android Studio, or IntelliJ)

### Verify Installation
```bash
# Check Flutter version
flutter --version

# Check Dart version
dart --version

# Check Flutter doctor
flutter doctor
```

**Expected Output**: All checks should pass (✓)

---

## 📦 Project Setup

### 1. Clone Repository
- [ ] Repository cloned successfully
```bash
git clone https://github.com/madhav2348/concentrate_on
cd concentrate_on
```

### 2. Install Dependencies
- [ ] Dependencies installed without errors
```bash
flutter pub get
```

**Expected Output**: "Changed X dependencies!" with no errors

### 3. Verify Project Structure
- [ ] `lib/` folder exists with all files
- [ ] `android/` folder exists
- [ ] `ios/` folder exists
- [ ] `pubspec.yaml` exists
- [ ] `README.md` exists

---

## 🔧 Platform-Specific Setup

### Android Setup
- [ ] Android SDK installed
- [ ] Android emulator or physical device connected
- [ ] USB debugging enabled (for physical device)
- [ ] Wake lock permission in AndroidManifest.xml

**Verify Android Setup**:
```bash
flutter devices
```

**Expected Output**: Android device listed

### iOS Setup (macOS only)
- [ ] Xcode installed
- [ ] iOS Simulator or physical device available
- [ ] CocoaPods installed
- [ ] iOS development certificate (for physical device)

**Verify iOS Setup**:
```bash
flutter devices
```

**Expected Output**: iOS device listed

### Desktop Setup

**Windows**:
- [ ] Visual Studio 2022 with C++ tools
- [ ] Windows 10 SDK

**macOS**:
- [ ] Xcode with command line tools
- [ ] CocoaPods

**Linux**:
- [ ] Required libraries installed
```bash
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev
```

---

## 🧪 Testing Setup

### Run Code Analysis
- [ ] No errors found
- [ ] No warnings found
```bash
flutter analyze
```

**Expected Output**: "No issues found!"

### Check Diagnostics
- [ ] All files pass diagnostics
- [ ] No lint errors

### Format Code
- [ ] Code formatted successfully
```bash
flutter format .
```

---

## 🚀 First Run

### 1. Choose Target Platform
- [ ] Device/emulator selected
```bash
flutter devices
```

### 2. Run the App
- [ ] App launches successfully
- [ ] No runtime errors
```bash
flutter run
```

**Expected Output**: App running on selected device

### 3. Test Core Features
- [ ] App opens to home screen
- [ ] Timer displays correctly (25:00)
- [ ] "Start Focus" button works
- [ ] Timer counts down
- [ ] Screen stays awake during session
- [ ] "Stop" button works
- [ ] Statistics screen accessible
- [ ] Settings screen accessible
- [ ] Settings can be adjusted
- [ ] Stats persist after restart

---

## 🎨 UI Verification

### Home Screen
- [ ] Timer displays prominently
- [ ] Circular progress indicator visible
- [ ] Start/Stop button works
- [ ] Quick stats card shows data
- [ ] Navigation icons in app bar

### Statistics Screen
- [ ] Total focus time displays
- [ ] Session count shows
- [ ] Stat cards render correctly
- [ ] Motivational message appears
- [ ] Back navigation works

### Settings Screen
- [ ] Focus duration slider works
- [ ] Short break slider works
- [ ] Long break slider works
- [ ] Values update in real-time
- [ ] Settings persist
- [ ] About section accessible

---

## 🌓 Theme Testing

### Light Theme
- [ ] Colors render correctly
- [ ] Text is readable
- [ ] Contrast is good
- [ ] Icons are visible

### Dark Theme
- [ ] Colors render correctly
- [ ] Text is readable
- [ ] Contrast is good
- [ ] Icons are visible

### Theme Switching
- [ ] System theme detection works
- [ ] Manual theme switch works (if implemented)

---

## 📱 Platform-Specific Testing

### Android
- [ ] App installs successfully
- [ ] Wake lock works
- [ ] Permissions granted
- [ ] Back button works
- [ ] App icon displays
- [ ] No crashes

### iOS
- [ ] App installs successfully
- [ ] Wake lock works
- [ ] Smooth animations
- [ ] Back gesture works
- [ ] App icon displays
- [ ] No crashes

## 🔍 Troubleshooting

### Common Issues

#### "Flutter not found"
```bash
# Add Flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"
```

#### "Dependencies not resolving"
```bash
flutter clean
flutter pub get
```

#### "Device not detected"
```bash
# Android
adb devices

# iOS
xcrun simctl list devices
```

#### "Build failed"
```bash
flutter clean
flutter pub get
flutter run
```

#### "Wake lock not working"
- Check permissions in AndroidManifest.xml
- Verify wakelock_plus package installed
- Test on physical device (not all emulators support wake lock)

---

## 📊 Performance Verification

### Metrics to Check
- [ ] Cold start < 3 seconds
- [ ] Hot reload < 1 second
- [ ] Memory usage < 100 MB
- [ ] Smooth 60 FPS animations
- [ ] No frame drops
- [ ] Battery drain < 5%

### Performance Testing
```bash
# Run in profile mode
flutter run --profile

# Check performance overlay
# Press 'P' in terminal while app is running
```

---



## 🆘 Need Help?

### Resources
- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Documentation](https://dart.dev/guides)
- [GitHub Issues](https://github.com/madhav2348/concentrate_on/issues)
- [Flutter Community](https://flutter.dev/community)

### Getting Support
1. Check documentation first
2. Search existing issues
3. Ask in GitHub Discussions
4. Open a new issue with details

---

**Happy Coding! 🚀**

*Last Updated: February 2026*

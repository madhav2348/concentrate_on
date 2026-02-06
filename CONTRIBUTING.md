# Contributing to Concentrate ON

Thank you for considering contributing to Concentrate ON! This document provides guidelines and instructions for contributing.

## 🤝 How to Contribute

### Reporting Bugs

If you find a bug, please create an issue with:
- Clear description of the bug
- Steps to reproduce
- Expected vs actual behavior
- Screenshots (if applicable)
- Device/platform information
- Flutter and Dart versions

### Suggesting Features

We welcome feature suggestions! Please:
- Check existing issues first
- Provide clear use case
- Explain why it would benefit users
- Consider implementation complexity

### Pull Requests

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes**
   - Follow the existing code style
   - Add comments for complex logic
   - Update documentation if needed

4. **Test your changes**
   ```bash
   flutter test
   flutter analyze
   ```

5. **Commit with clear messages**
   ```bash
   git commit -m "feat: add AI task suggestions"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Open a Pull Request**
   - Describe your changes
   - Reference related issues
   - Include screenshots for UI changes

## 📝 Code Style Guidelines

### Dart/Flutter Conventions
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart)
- Use `flutter format` before committing
- Keep functions small and focused
- Use meaningful variable names
- Add documentation comments for public APIs

### File Organization
```
lib/
├── models/          # Data models
├── providers/       # State management
├── screens/         # UI screens
├── widgets/         # Reusable widgets
├── services/        # Business logic
└── utils/           # Helper functions
```

### Naming Conventions
- Files: `snake_case.dart`
- Classes: `PascalCase`
- Variables/Functions: `camelCase`
- Constants: `SCREAMING_SNAKE_CASE`

## 🧪 Testing

- Write tests for new features
- Ensure existing tests pass
- Aim for good test coverage

```bash
# Run all tests
flutter test

# Run specific test
flutter test test/widget_test.dart
```

## 🎯 Priority Features

We're especially interested in contributions for:

1. **AI Task Management**
   - Natural language task parsing
   - Smart task suggestions
   - Priority recommendations

2. **Do Not Disturb Integration**
   - Android DND API integration
   - iOS Focus Mode integration
   - Custom notification filtering

3. **App Blocking**
   - Usage access implementation
   - App detection and blocking
   - Whitelist/blacklist management

4. **Enhanced Analytics**
   - Data visualization
   - Export functionality
   - Productivity insights

## 🔍 Code Review Process

1. Maintainers will review your PR
2. Address any requested changes
3. Once approved, PR will be merged
4. Your contribution will be credited

## 📜 Commit Message Format

Use conventional commits:

- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `style:` Code style changes (formatting)
- `refactor:` Code refactoring
- `test:` Adding tests
- `chore:` Maintenance tasks

Examples:
```
feat: add dark mode toggle
fix: timer not stopping correctly
docs: update README with new features
```

## 🌟 Recognition

Contributors will be:
- Listed in the README
- Credited in release notes
- Mentioned in the app's about section

## 📞 Questions?

- Open an issue for discussion
- Tag maintainers for urgent matters
- Be respectful and patient

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for helping make Concentrate ON better! 🚀

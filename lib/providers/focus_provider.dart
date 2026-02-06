import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FocusProvider extends ChangeNotifier {
  bool _isFocusMode = false;
  int _remainingSeconds = 0;
  Timer? _timer;
  int _totalSessions = 0;
  int _totalFocusMinutes = 0;
  
  // Pomodoro settings
  int _focusDuration = 25; // minutes
  int _shortBreak = 5;
  int _longBreak = 15;
  
  bool get isFocusMode => _isFocusMode;
  int get remainingSeconds => _remainingSeconds;
  int get totalSessions => _totalSessions;
  int get totalFocusMinutes => _totalFocusMinutes;
  int get focusDuration => _focusDuration;
  int get shortBreak => _shortBreak;
  int get longBreak => _longBreak;

  String get formattedTime {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  double get progress {
    if (_focusDuration * 60 == 0) return 0;
    return _remainingSeconds / (_focusDuration * 60);
  }

  FocusProvider() {
    _loadStats();
  }

  Future<void> _loadStats() async {
    final prefs = await SharedPreferences.getInstance();
    _totalSessions = prefs.getInt('totalSessions') ?? 0;
    _totalFocusMinutes = prefs.getInt('totalFocusMinutes') ?? 0;
    _focusDuration = prefs.getInt('focusDuration') ?? 25;
    _shortBreak = prefs.getInt('shortBreak') ?? 5;
    _longBreak = prefs.getInt('longBreak') ?? 15;
    notifyListeners();
  }

  Future<void> _saveStats() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('totalSessions', _totalSessions);
    await prefs.setInt('totalFocusMinutes', _totalFocusMinutes);
  }

  Future<void> updateSettings({int? focus, int? shortB, int? longB}) async {
    final prefs = await SharedPreferences.getInstance();
    if (focus != null) {
      _focusDuration = focus;
      await prefs.setInt('focusDuration', focus);
    }
    if (shortB != null) {
      _shortBreak = shortB;
      await prefs.setInt('shortBreak', shortB);
    }
    if (longB != null) {
      _longBreak = longB;
      await prefs.setInt('longBreak', longB);
    }
    notifyListeners();
  }

  void startFocusSession({int? customMinutes}) {
    if (_isFocusMode) return;

    final duration = customMinutes ?? _focusDuration;
    _remainingSeconds = duration * 60;
    _isFocusMode = true;

    // Enable wake lock
    WakelockPlus.enable();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        _remainingSeconds--;
        notifyListeners();
      } else {
        _completeSession(duration);
      }
    });

    notifyListeners();
  }

  void _completeSession(int duration) {
    _timer?.cancel();
    _isFocusMode = false;
    _totalSessions++;
    _totalFocusMinutes += duration;
    _saveStats();
    
    // Disable wake lock
    WakelockPlus.disable();
    
    notifyListeners();
  }

  void stopFocusSession() {
    _timer?.cancel();
    _isFocusMode = false;
    _remainingSeconds = 0;
    
    // Disable wake lock
    WakelockPlus.disable();
    
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    WakelockPlus.disable();
    super.dispose();
  }
}

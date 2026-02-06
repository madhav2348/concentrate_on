import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/focus_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Consumer<FocusProvider>(
        builder: (context, focusProvider, child) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Pomodoro Timer Settings',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              
              _buildTimerSetting(
                context,
                'Focus Duration',
                focusProvider.focusDuration,
                (value) {
                  focusProvider.updateSettings(focus: value.round());
                },
                5,
                60,
              ),
              
              const SizedBox(height: 16),
              
              _buildTimerSetting(
                context,
                'Short Break',
                focusProvider.shortBreak,
                (value) {
                  focusProvider.updateSettings(shortB: value.round());
                },
                1,
                15,
              ),
              
              const SizedBox(height: 16),
              
              _buildTimerSetting(
                context,
                'Long Break',
                focusProvider.longBreak,
                (value) {
                  focusProvider.updateSettings(longB: value.round());
                },
                5,
                30,
              ),
              
              const SizedBox(height: 32),
              
              const Divider(),
              
              const SizedBox(height: 16),
              
              const Text(
                'About',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Version'),
                subtitle: const Text('1.0.0'),
              ),
              
              ListTile(
                leading: const Icon(Icons.description),
                title: const Text('About Concentrate ON'),
                subtitle: const Text('A focus mode app to boost productivity'),
                onTap: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'Concentrate ON',
                    applicationVersion: '1.0.0',
                    applicationLegalese: '© 2026 Concentrate ON',
                    children: [
                      const SizedBox(height: 16),
                      const Text(
                        'Stay focused and productive with customizable Pomodoro timers, '
                        'wake lock support, and distraction-free sessions.',
                      ),
                    ],
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTimerSetting(
    BuildContext context,
    String title,
    int currentValue,
    Function(double) onChanged,
    double min,
    double max,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '$currentValue min',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            Slider(
              value: currentValue.toDouble(),
              min: min,
              max: max,
              divisions: (max - min).round(),
              label: '$currentValue min',
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}

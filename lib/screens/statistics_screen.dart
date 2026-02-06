import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/focus_provider.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistics'),
        centerTitle: true,
      ),
      body: Consumer<FocusProvider>(
        builder: (context, focusProvider, child) {
          final hours = focusProvider.totalFocusMinutes ~/ 60;
          final minutes = focusProvider.totalFocusMinutes % 60;
          
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Summary Card
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Icon(
                        Icons.emoji_events,
                        size: 64,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Total Focus Time',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        hours > 0 ? '$hours h $minutes m' : '$minutes m',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Stats Grid
              Row(
                children: [
                  Expanded(
                    child: _buildStatCard(
                      context,
                      Icons.check_circle,
                      '${focusProvider.totalSessions}',
                      'Completed\nSessions',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildStatCard(
                      context,
                      Icons.timer,
                      '${focusProvider.totalFocusMinutes}',
                      'Total\nMinutes',
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              Row(
                children: [
                  Expanded(
                    child: _buildStatCard(
                      context,
                      Icons.trending_up,
                      focusProvider.totalSessions > 0
                          ? (focusProvider.totalFocusMinutes / focusProvider.totalSessions).toStringAsFixed(1)
                          : '0',
                      'Avg Session\n(minutes)',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildStatCard(
                      context,
                      Icons.local_fire_department,
                      '${focusProvider.totalSessions}',
                      'Current\nStreak',
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              
              // Motivational Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primaryContainer,
                      Theme.of(context).colorScheme.secondaryContainer,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.psychology, size: 48),
                    const SizedBox(height: 12),
                    Text(
                      _getMotivationalMessage(focusProvider.totalSessions),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, IconData icon, String value, String label) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 12),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  String _getMotivationalMessage(int sessions) {
    if (sessions == 0) {
      return 'Start your first focus session and build momentum!';
    } else if (sessions < 5) {
      return 'Great start! Keep building your focus habit.';
    } else if (sessions < 10) {
      return 'You\'re on fire! Consistency is key.';
    } else if (sessions < 25) {
      return 'Impressive dedication! You\'re mastering focus.';
    } else {
      return 'Focus master! Your productivity is unstoppable.';
    }
  }
}

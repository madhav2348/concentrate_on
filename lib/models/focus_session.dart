class FocusSession {
  final int duration; // in minutes
  final DateTime startTime;
  final DateTime? endTime;
  final bool completed;

  FocusSession({
    required this.duration,
    required this.startTime,
    this.endTime,
    this.completed = false,
  });

  Map<String, dynamic> toJson() => {
        'duration': duration,
        'startTime': startTime.toIso8601String(),
        'endTime': endTime?.toIso8601String(),
        'completed': completed,
      };

  factory FocusSession.fromJson(Map<String, dynamic> json) => FocusSession(
        duration: json['duration'],
        startTime: DateTime.parse(json['startTime']),
        endTime: json['endTime'] != null ? DateTime.parse(json['endTime']) : null,
        completed: json['completed'] ?? false,
      );
}

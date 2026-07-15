import 'student_info_model.dart';
import 'statistics_model.dart';
import 'progress_model.dart';
import 'mentor_model.dart';

class DashboardModel {
  final StudentInfoModel student;
  final StatisticsModel statistics;
  final ProgressModel progress;
  final MentorModel mentor;
  final int notifications;
  final int messages;

  const DashboardModel({
    required this.student,
    required this.statistics,
    required this.progress,
    required this.mentor,
    required this.notifications,
    required this.messages,
  });

  factory DashboardModel.fromMap(Map<String, dynamic> map) {
    return DashboardModel(
      student: StudentInfoModel.fromMap(map['student'] ?? {}),
      statistics: StatisticsModel.fromMap(map['statistics'] ?? {}),
      progress: ProgressModel.fromMap(map['progress'] ?? {}),
      mentor: MentorModel.fromMap(map['mentor'] ?? {}),
      notifications: map['notifications'] ?? 0,
      messages: map['messages'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'student': student.toMap(),
      'statistics': statistics.toMap(),
      'progress': progress.toMap(),
      'mentor': mentor.toMap(),
      'notifications': notifications,
      'messages': messages,
    };
  }
}
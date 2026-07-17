import 'activity_model.dart';
import 'event_model.dart';
import 'mentor_model.dart';
import 'mission_model.dart';
import 'progress_model.dart';
import 'stat_model.dart';

class StudentDashboardModel {
  final List<StatModel> stats;
  final List<MissionModel> missions;
  final List<ActivityModel> activities;
  final List<EventModel> events;
  final MentorModel mentor;
  final List<ProgressModel> progress;

  const StudentDashboardModel({
    required this.stats,
    required this.missions,
    required this.activities,
    required this.events,
    required this.mentor,
    required this.progress,
  });
}
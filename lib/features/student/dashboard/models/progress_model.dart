class ProgressModel {
  final int learning;
  final int innovation;
  final int projects;
  final int leadership;
  final int community;
  final int research;
  final int overall;

  const ProgressModel({
    required this.learning,
    required this.innovation,
    required this.projects,
    required this.leadership,
    required this.community,
    required this.research,
    required this.overall,
  });

  factory ProgressModel.fromMap(Map<String, dynamic> map) {
    return ProgressModel(
      learning: map['learning'] ?? 0,
      innovation: map['innovation'] ?? 0,
      projects: map['projects'] ?? 0,
      leadership: map['leadership'] ?? 0,
      community: map['community'] ?? 0,
      research: map['research'] ?? 0,
      overall: map['overall'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'learning': learning,
      'innovation': innovation,
      'projects': projects,
      'leadership': leadership,
      'community': community,
      'research': research,
      'overall': overall,
    };
  }
}
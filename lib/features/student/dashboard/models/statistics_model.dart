class StatisticsModel {
  final int talentScore;
  final int globalRank;
  final int innovationScore;
  final int certificates;

  const StatisticsModel({
    required this.talentScore,
    required this.globalRank,
    required this.innovationScore,
    required this.certificates,
  });

  factory StatisticsModel.fromMap(Map<String, dynamic> map) {
    return StatisticsModel(
      talentScore: map['talentScore'] ?? 0,
      globalRank: map['globalRank'] ?? 0,
      innovationScore: map['innovationScore'] ?? 0,
      certificates: map['certificates'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'talentScore': talentScore,
      'globalRank': globalRank,
      'innovationScore': innovationScore,
      'certificates': certificates,
    };
  }
}
class MentorModel {
  final String name;
  final String designation;
  final String nextSession;

  const MentorModel({
    required this.name,
    required this.designation,
    required this.nextSession,
  });

  factory MentorModel.fromMap(Map<String, dynamic> map) {
    return MentorModel(
      name: map['name'] ?? '',
      designation: map['designation'] ?? '',
      nextSession: map['nextSession'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'designation': designation,
      'nextSession': nextSession,
    };
  }
}
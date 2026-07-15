class StudentInfoModel {
  final String id;
  final String name;
  final String chapter;
  final String college;
  final String department;
  final String year;
  final String profileImage;

  const StudentInfoModel({
    required this.id,
    required this.name,
    required this.chapter,
    required this.college,
    required this.department,
    required this.year,
    required this.profileImage,
  });

  factory StudentInfoModel.fromMap(Map<String, dynamic> map) {
    return StudentInfoModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      chapter: map['chapter'] ?? '',
      college: map['college'] ?? '',
      department: map['department'] ?? '',
      year: map['year'] ?? '',
      profileImage: map['profileImage'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'chapter': chapter,
      'college': college,
      'department': department,
      'year': year,
      'profileImage': profileImage,
    };
  }
}
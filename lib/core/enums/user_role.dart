enum UserRole {
  student,
  prodigy,
  industry,
  college,
  admin;

  String get value => name;

  static UserRole fromString(String value) {
    return UserRole.values.firstWhere(
          (role) => role.name.toLowerCase() == value.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid user role: $value'),
    );
  }

  bool get isStudent => this == UserRole.student;

  bool get isProdigy => this == UserRole.prodigy;

  bool get isIndustry => this == UserRole.industry;

  bool get isCollege => this == UserRole.college;

  bool get isAdmin => this == UserRole.admin;
}
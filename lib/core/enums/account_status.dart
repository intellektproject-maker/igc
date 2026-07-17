enum AccountStatus {
  pending,
  active,
  suspended,
  rejected;

  String get value => name;

  static AccountStatus fromString(String value) {
    return AccountStatus.values.firstWhere(
          (status) => status.name.toLowerCase() == value.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid account status: $value'),
    );
  }

  bool get isPending => this == AccountStatus.pending;

  bool get isActive => this == AccountStatus.active;

  bool get isSuspended => this == AccountStatus.suspended;

  bool get isRejected => this == AccountStatus.rejected;
}
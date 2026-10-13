/// How strongly the app points users to Turnus. Ordered: every stage includes
/// what the one before it shows.
enum MigrationStage {
  /// The app looks as it always did.
  off,

  /// A banner above every page and a dialog every few days.
  soft,

  /// The plan is gone; only the notice is left.
  hard;

  /// Unknown values read as [off], so a typo in the CMS never locks anyone
  /// out of the plan.
  static MigrationStage parse(Object? value) => MigrationStage.values
      .firstWhere((stage) => stage.name == value, orElse: () => off);
}

/// The migration settings from the CMS.
class MigrationNotice {
  const MigrationNotice({required this.stage, this.message});

  factory MigrationNotice.fromJson(Map<String, dynamic> json) {
    final message = json['message'];
    return MigrationNotice(
      stage: MigrationStage.parse(json['stage']),
      message: message is String && message.trim().isNotEmpty
          ? message.trim()
          : null,
    );
  }

  final MigrationStage stage;

  /// Replaces the default notice text when set.
  final String? message;

  Map<String, dynamic> toJson() => {'stage': stage.name, 'message': message};

  MigrationNotice atLeast(MigrationStage floor) => floor.index > stage.index
      ? MigrationNotice(stage: floor, message: message)
      : this;
}

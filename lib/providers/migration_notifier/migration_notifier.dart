import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mplan_mobile/api/models/migration_notice.dart';
import 'package:mplan_mobile/app_configuration.dart';
import 'package:mplan_mobile/constants.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'migration_notifier.g.dart';

/// The migration notice. Starts from the last notice the app saw, so a hard
/// stage shows from the first frame and survives the CMS going away, then
/// refreshes from the CMS in the background.
@riverpod
class MigrationNotifier extends _$MigrationNotifier {
  @override
  MigrationNotice build() {
    unawaited(_refresh());
    return _cached().atLeast(migrationStageFloor);
  }

  MigrationNotice _cached() {
    final stored = ref
        .read(sharedPreferencesProvider)
        .getString(migrationNoticeKey);
    if (stored == null) return const MigrationNotice(stage: MigrationStage.off);
    try {
      return MigrationNotice.fromJson(
        jsonDecode(stored) as Map<String, dynamic>,
      );
    } on FormatException {
      return const MigrationNotice(stage: MigrationStage.off);
    }
  }

  Future<void> _refresh() async {
    final MigrationNotice notice;
    try {
      notice = await ref.read(mplanRepositoryProvider).getMigrationNotice();
    } on DioException {
      return;
    }
    await ref
        .read(sharedPreferencesProvider)
        .setString(migrationNoticeKey, jsonEncode(notice.toJson()));
    if (ref.mounted) state = notice.atLeast(migrationStageFloor);
  }
}

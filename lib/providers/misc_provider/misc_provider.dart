import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/api/repositories/mplan_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'misc_provider.g.dart';

/// The shared preferences provider needed for storing the name
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

/// The package info provider needed for getting the app version
/// and build number
final packageInfoProvider = Provider<PackageInfo>((ref) {
  throw UnimplementedError();
});

/// The local notifications provider needed for scheduling
/// notifications
@riverpod
FlutterLocalNotificationsPlugin localNotificationsPlugin(
  Ref ref,
) {
  throw UnimplementedError();
}

/// The [Provider] for the [MplanRepository].
@riverpod
MplanRepository mplanRepository(Ref ref) => MplanRepository();

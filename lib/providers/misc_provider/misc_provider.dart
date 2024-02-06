import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'misc_provider.g.dart';

/// The shared preferences provider needed for storing the name
@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  throw UnimplementedError();
}

/// The package info provider needed for getting the app version
/// and build number
@Riverpod(keepAlive: true)
PackageInfo packageInfo(PackageInfoRef ref) {
  throw UnimplementedError();
}

/// The local notifications provider needed for scheduling
/// notifications
@Riverpod(keepAlive: true)
FlutterLocalNotificationsPlugin localNotificationsPlugin(
  LocalNotificationsPluginRef ref,
) {
  throw UnimplementedError();
}

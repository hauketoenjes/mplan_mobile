import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The shared preferences provider needed for storing the name
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

/// The package info provider needed for getting the app version
/// and build number
final packageInfoProvider = Provider<PackageInfo>((ref) {
  throw UnimplementedError();
});

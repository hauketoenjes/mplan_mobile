// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'3a9f8412df34c1653d08100c9826aa2125b80f7f';

/// The shared preferences provider needed for storing the name
///
/// Copied from [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = Provider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = ProviderRef<SharedPreferences>;
String _$packageInfoHash() => r'4807e3f50a31b893a8238518ca3be970107281ad';

/// The package info provider needed for getting the app version
/// and build number
///
/// Copied from [packageInfo].
@ProviderFor(packageInfo)
final packageInfoProvider = Provider<PackageInfo>.internal(
  packageInfo,
  name: r'packageInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$packageInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PackageInfoRef = ProviderRef<PackageInfo>;
String _$localNotificationsPluginHash() =>
    r'30ca765ee5d089c8c221eb2b5c5984db531880cd';

/// The local notifications provider needed for scheduling
/// notifications
///
/// Copied from [localNotificationsPlugin].
@ProviderFor(localNotificationsPlugin)
final localNotificationsPluginProvider =
    Provider<FlutterLocalNotificationsPlugin>.internal(
  localNotificationsPlugin,
  name: r'localNotificationsPluginProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localNotificationsPluginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalNotificationsPluginRef
    = ProviderRef<FlutterLocalNotificationsPlugin>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

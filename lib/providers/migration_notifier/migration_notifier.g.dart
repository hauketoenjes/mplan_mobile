// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migration_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The migration notice. Starts from the last notice the app saw, so a hard
/// stage shows from the first frame and survives the CMS going away, then
/// refreshes from the CMS in the background.

@ProviderFor(MigrationNotifier)
const migrationProvider = MigrationNotifierProvider._();

/// The migration notice. Starts from the last notice the app saw, so a hard
/// stage shows from the first frame and survives the CMS going away, then
/// refreshes from the CMS in the background.
final class MigrationNotifierProvider
    extends $NotifierProvider<MigrationNotifier, MigrationNotice> {
  /// The migration notice. Starts from the last notice the app saw, so a hard
  /// stage shows from the first frame and survives the CMS going away, then
  /// refreshes from the CMS in the background.
  const MigrationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'migrationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$migrationNotifierHash();

  @$internal
  @override
  MigrationNotifier create() => MigrationNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MigrationNotice value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MigrationNotice>(value),
    );
  }
}

String _$migrationNotifierHash() => r'7b822e707a185c8d771df5b0924c855bdd17cdbb';

/// The migration notice. Starts from the last notice the app saw, so a hard
/// stage shows from the first frame and survives the CMS going away, then
/// refreshes from the CMS in the background.

abstract class _$MigrationNotifier extends $Notifier<MigrationNotice> {
  MigrationNotice build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MigrationNotice, MigrationNotice>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MigrationNotice, MigrationNotice>,
              MigrationNotice,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

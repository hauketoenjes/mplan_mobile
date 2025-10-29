// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The local notifications provider needed for scheduling
/// notifications

@ProviderFor(localNotificationsPlugin)
const localNotificationsPluginProvider = LocalNotificationsPluginProvider._();

/// The local notifications provider needed for scheduling
/// notifications

final class LocalNotificationsPluginProvider
    extends
        $FunctionalProvider<
          FlutterLocalNotificationsPlugin,
          FlutterLocalNotificationsPlugin,
          FlutterLocalNotificationsPlugin
        >
    with $Provider<FlutterLocalNotificationsPlugin> {
  /// The local notifications provider needed for scheduling
  /// notifications
  const LocalNotificationsPluginProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localNotificationsPluginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localNotificationsPluginHash();

  @$internal
  @override
  $ProviderElement<FlutterLocalNotificationsPlugin> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FlutterLocalNotificationsPlugin create(Ref ref) {
    return localNotificationsPlugin(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FlutterLocalNotificationsPlugin value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FlutterLocalNotificationsPlugin>(
        value,
      ),
    );
  }
}

String _$localNotificationsPluginHash() =>
    r'34e80cd3af384968385e0ac09891d76224b52740';

/// The [Provider] for the [MplanRepository].

@ProviderFor(mplanRepository)
const mplanRepositoryProvider = MplanRepositoryProvider._();

/// The [Provider] for the [MplanRepository].

final class MplanRepositoryProvider
    extends
        $FunctionalProvider<MplanRepository, MplanRepository, MplanRepository>
    with $Provider<MplanRepository> {
  /// The [Provider] for the [MplanRepository].
  const MplanRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mplanRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mplanRepositoryHash();

  @$internal
  @override
  $ProviderElement<MplanRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MplanRepository create(Ref ref) {
    return mplanRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MplanRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MplanRepository>(value),
    );
  }
}

String _$mplanRepositoryHash() => r'1c9cdac8bcef1001e983b3a51a8f96fe87ec808f';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationNotifier)
const notificationProvider = NotificationNotifierProvider._();

final class NotificationNotifierProvider
    extends
        $AsyncNotifierProvider<
          NotificationNotifier,
          List<PendingNotificationRequest>
        > {
  const NotificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationNotifierHash();

  @$internal
  @override
  NotificationNotifier create() => NotificationNotifier();
}

String _$notificationNotifierHash() =>
    r'0ef97976bad4da0ebc6d88d02905468775e24bac';

abstract class _$NotificationNotifier
    extends $AsyncNotifier<List<PendingNotificationRequest>> {
  FutureOr<List<PendingNotificationRequest>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<PendingNotificationRequest>>,
              List<PendingNotificationRequest>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PendingNotificationRequest>>,
                List<PendingNotificationRequest>
              >,
              AsyncValue<List<PendingNotificationRequest>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

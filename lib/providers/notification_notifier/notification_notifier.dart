import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mplan_mobile/misc/datetime_extensions.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_notifier.g.dart';

const _notificationIdentifier = 'mplan_mobile_notification';
const _notificationChannelMassesName = 'mass_notification';

@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Future<List<PendingNotificationRequest>> build() {
    final localNotificationProvider =
        ref.watch(localNotificationsPluginProvider);

    return localNotificationProvider.pendingNotificationRequests();
  }

  /// Cancel the notification with the given [id].
  Future<void> cancel(String id) async {
    final localNotificationProvider =
        ref.watch(localNotificationsPluginProvider);

    await localNotificationProvider.cancel(stringToNotificationId(id));

    // Refresh the notifier
    ref.invalidateSelf();
  }

  /// Cancels all notifications.
  Future<void> cancelAll() async {
    final localNotificationProvider =
        ref.watch(localNotificationsPluginProvider);

    await localNotificationProvider.cancelAll();

    // Refresh the notifier
    ref.invalidateSelf();
  }

  Future<void> scheduleNotification(NotificationModel notification) async {
    final localNotificationProvider =
        ref.watch(localNotificationsPluginProvider);

    // Configure the notification details
    final darwinNotificationDetails = DarwinNotificationDetails(
      threadIdentifier: _notificationIdentifier,
      subtitle: notification.notificationSubtitle,
    );
    final androidNotificationDetails = AndroidNotificationDetails(
      _notificationIdentifier,
      _notificationChannelMassesName,
      subText: notification.notificationSubtitle,
    );
    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    // Schedule the notification
    await localNotificationProvider.zonedSchedule(
      stringToNotificationId(notification.itemId),
      notification.appName,
      notification.notificationBody,
      notification.date.toLocalTz().subtract(notification.notifyBefore),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.inexact,
    );

    // Refresh the notifier
    ref.invalidateSelf();
  }
}

/// Converts the given [string] to an [int] for the notification id.
int stringToNotificationId(String string) {
  return string.codeUnits.fold<int>(0, (previousValue, element) {
    return previousValue + element;
  });
}

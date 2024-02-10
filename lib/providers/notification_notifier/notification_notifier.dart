import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mplan_mobile/misc/datetime_extensions.dart';
import 'package:mplan_mobile/misc/notification_lead_times_extensions.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_notifier.g.dart';

const _notificationIdentifier = 'mplan_mobile_notification';
const _notificationChannelMassesName = 'mass_notification';

const _sharedPreferencesNotificationsKey = 'notifications';

@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  List<NotificationModel> build() {
    return _getReminders();
  }

  /// Cancel the notification with the given [id].
  Future<void> cancel(String id) async {
    final localNotificationProvider =
        ref.watch(localNotificationsPluginProvider);

    final reminder = await _removeReminder(id);
    await localNotificationProvider
        .cancel(reminderItemToNotificationId(reminder));

    // Refresh the notifier
    ref.invalidateSelf();
  }

  /// Cancels all notifications.
  Future<void> cancelAll() async {
    final localNotificationProvider =
        ref.watch(localNotificationsPluginProvider);

    await localNotificationProvider.cancelAll();
    await _removeAllReminders();

    // Refresh the notifier
    ref.invalidateSelf();
  }

  Future<void> scheduleNotification(NotificationModel reminder) async {
    final localNotificationProvider =
        ref.watch(localNotificationsPluginProvider);

    // Configure the notification details
    final darwinNotificationDetails = DarwinNotificationDetails(
      threadIdentifier: _notificationIdentifier,
      subtitle: reminder.notificationSubtitle,
    );
    final androidNotificationDetails = AndroidNotificationDetails(
      _notificationIdentifier,
      _notificationChannelMassesName,
      subText: reminder.notificationSubtitle,
    );
    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    // Store the notification in the shared preferences
    await _addReminder(reminder);

    // Schedule the notification
    await localNotificationProvider.zonedSchedule(
      reminderItemToNotificationId(reminder),
      reminder.notificationAppName,
      reminder.notificationBody,
      reminder.planItemDate
          .toLocalTz()
          .subtract(reminder.notificationLeadTime.duration),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.inexact,
    );

    // Refresh the notifier
    ref.invalidateSelf();
  }

  /// Returns the reminders from the shared preferences.
  List<NotificationModel> _getReminders() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);

    final remindersJson =
        sharedPreferences.getStringList(_sharedPreferencesNotificationsKey) ??
            [];

    return remindersJson
        .map(
          (e) =>
              NotificationModel.fromJson(jsonDecode(e) as Map<String, dynamic>),
        )
        .toList();
  }

  /// Adds the given [reminder] to the shared preferences.
  Future<void> _addReminder(NotificationModel reminder) async {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);

    final reminders = _getReminders()..add(reminder);
    final remindersJson = reminders.map((e) => jsonEncode(e.toJson())).toList();
    await sharedPreferences.setStringList(
      _sharedPreferencesNotificationsKey,
      remindersJson,
    );
  }

  /// Removes the reminder with the given [id] from the shared preferences.
  /// Returns the removed reminder.
  Future<NotificationModel> _removeReminder(String id) async {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);

    final reminders = _getReminders();
    final reminder =
        reminders.removeAt(reminders.indexWhere((e) => e.id == id));
    final remindersJson = reminders.map((e) => jsonEncode(e.toJson())).toList();
    await sharedPreferences.setStringList(
      _sharedPreferencesNotificationsKey,
      remindersJson,
    );

    return reminder;
  }

  /// Removes all reminders from the shared preferences.
  Future<void> _removeAllReminders() async {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);

    await sharedPreferences.remove(_sharedPreferencesNotificationsKey);
  }
}

/// Returns the notification id for the given [reminder].
/// Uses the [NotificationModel.planItemDate] and
/// [NotificationModel.notificationLeadTime]
///
/// The local notifications only support 32-bit integers as ids.
/// As we use the date and the lead time to calculate the id,
/// this will break in the year 2038. This is a future problem
/// and we can ignore it for now ;) (https://en.wikipedia.org/wiki/Year_2038_problem)
int reminderItemToNotificationId(NotificationModel reminder) {
  final x = reminder.planItemDate
          .toLocalTz()
          .subtract(reminder.notificationLeadTime.duration)
          .millisecondsSinceEpoch ~/
      Duration.millisecondsPerSecond;

  return x;
}

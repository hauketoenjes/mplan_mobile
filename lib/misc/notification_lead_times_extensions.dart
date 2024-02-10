import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/misc/notification_lead_time.dart';

extension NotificationLeadTimesExtensions on NotificationLeadTime {
  /// Returns the duration of the notification lead time.
  Duration get duration {
    switch (this) {
      case NotificationLeadTime.oneWeek:
        return const Duration(days: 7);
      case NotificationLeadTime.oneDay:
        return const Duration(days: 1);
      case NotificationLeadTime.twelveHours:
        return const Duration(hours: 12);
      case NotificationLeadTime.oneHour:
        return const Duration(hours: 1);
    }
  }

  /// Returns the translation of the notification lead time.
  String translation(BuildContext context) {
    switch (this) {
      case NotificationLeadTime.oneWeek:
        return context.l10n.reminder_1week;
      case NotificationLeadTime.oneDay:
        return context.l10n.reminder_1day;
      case NotificationLeadTime.twelveHours:
        return context.l10n.reminder_12hours;
      case NotificationLeadTime.oneHour:
        return context.l10n.reminder_1hour;
    }
  }

  /// Returns the short representation of the notification lead time.
  String get shortRepresentation {
    switch (this) {
      case NotificationLeadTime.oneWeek:
        return '7d';
      case NotificationLeadTime.oneDay:
        return '1d';
      case NotificationLeadTime.twelveHours:
        return '12h';
      case NotificationLeadTime.oneHour:
        return '1h';
    }
  }
}

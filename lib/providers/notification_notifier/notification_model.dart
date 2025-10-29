import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String itemId,
    required DateTime date,
    required Duration notifyBefore,
    required String notificationSubtitle,
    required String appName,
    required String notificationBody,
  }) = _NotificationModel;
}

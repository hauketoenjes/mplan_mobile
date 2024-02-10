import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mplan_mobile/misc/notification_lead_time.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,
    required String planItemId,
    required DateTime planItemDate,
    required String? planItemLocation,
    required String? planItemExtra,
    required NotificationLeadTime notificationLeadTime,
    required String notificationSubtitle,
    required String notificationAppName,
    required String notificationBody,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

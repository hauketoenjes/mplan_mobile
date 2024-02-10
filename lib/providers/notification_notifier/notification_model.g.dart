// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String,
      planItemId: json['planItemId'] as String,
      planItemDate: DateTime.parse(json['planItemDate'] as String),
      planItemLocation: json['planItemLocation'] as String?,
      planItemExtra: json['planItemExtra'] as String?,
      notificationLeadTime: $enumDecode(
          _$NotificationLeadTimeEnumMap, json['notificationLeadTime']),
      notificationSubtitle: json['notificationSubtitle'] as String,
      notificationAppName: json['notificationAppName'] as String,
      notificationBody: json['notificationBody'] as String,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'planItemId': instance.planItemId,
      'planItemDate': instance.planItemDate.toIso8601String(),
      'planItemLocation': instance.planItemLocation,
      'planItemExtra': instance.planItemExtra,
      'notificationLeadTime':
          _$NotificationLeadTimeEnumMap[instance.notificationLeadTime]!,
      'notificationSubtitle': instance.notificationSubtitle,
      'notificationAppName': instance.notificationAppName,
      'notificationBody': instance.notificationBody,
    };

const _$NotificationLeadTimeEnumMap = {
  NotificationLeadTime.oneWeek: 'oneWeek',
  NotificationLeadTime.oneDay: 'oneDay',
  NotificationLeadTime.twelveHours: 'twelveHours',
  NotificationLeadTime.oneHour: 'oneHour',
};

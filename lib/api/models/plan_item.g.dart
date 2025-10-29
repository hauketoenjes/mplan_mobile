// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanItem _$PlanItemFromJson(Map<String, dynamic> json) => _PlanItem(
  id: json['id'] as String,
  date: DateTime.parse(json['date'] as String),
  location: json['location'] as String?,
  extra: json['extra'] as String?,
  canceled: json['canceled'] as bool?,
  acolytes: (json['acolytes'] as Map<String, dynamic>?)?.map(
    (k, e) =>
        MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
  ),
);

Map<String, dynamic> _$PlanItemToJson(_PlanItem instance) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date.toIso8601String(),
  'location': instance.location,
  'extra': instance.extra,
  'canceled': instance.canceled,
  'acolytes': instance.acolytes,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanItemImpl _$$PlanItemImplFromJson(Map<String, dynamic> json) =>
    _$PlanItemImpl(
      date: DateTime.parse(json['date'] as String),
      location: json['location'] as String?,
      extra: json['extra'] as String?,
      canceled: json['canceled'] as bool?,
      acolytes: (json['acolytes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$PlanItemImplToJson(_$PlanItemImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'location': instance.location,
      'extra': instance.extra,
      'canceled': instance.canceled,
      'acolytes': instance.acolytes,
    };

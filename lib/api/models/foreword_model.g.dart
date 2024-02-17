// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForewordImpl _$$ForewordImplFromJson(Map<String, dynamic> json) =>
    _$ForewordImpl(
      content: json['content'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$ForewordImplToJson(_$ForewordImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'date': instance.date.toIso8601String(),
    };

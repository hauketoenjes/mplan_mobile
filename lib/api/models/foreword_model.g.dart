// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForewordModelImpl _$$ForewordModelImplFromJson(Map<String, dynamic> json) =>
    _$ForewordModelImpl(
      content: json['content'] as String,
      updatedOn: DateTime.parse(json['updated_on'] as String),
    );

Map<String, dynamic> _$$ForewordModelImplToJson(_$ForewordModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'updated_on': instance.updatedOn.toIso8601String(),
    };

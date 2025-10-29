// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForewordModel _$ForewordModelFromJson(Map<String, dynamic> json) =>
    _ForewordModel(
      content: json['content'] as String,
      updatedOn: DateTime.parse(json['updated_on'] as String),
    );

Map<String, dynamic> _$ForewordModelToJson(_ForewordModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'updated_on': instance.updatedOn.toIso8601String(),
    };

import 'package:freezed_annotation/freezed_annotation.dart';

part 'foreword_model.freezed.dart';
part 'foreword_model.g.dart';

@freezed
class Foreword with _$Foreword {
  const factory Foreword({
    required String content,
    required DateTime date,
  }) = _Foreword;

  factory Foreword.fromJson(Map<String, dynamic> json) =>
      _$ForewordFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'foreword_model.freezed.dart';
part 'foreword_model.g.dart';

@freezed
class ForewordModel with _$ForewordModel {
  const factory ForewordModel({
    required String content,
    @JsonKey(name: 'updated_on') required DateTime updatedOn,
  }) = _ForewordModel;

  factory ForewordModel.fromJson(Map<String, dynamic> json) =>
      _$ForewordModelFromJson(json);
}

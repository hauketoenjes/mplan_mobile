import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_item.freezed.dart';
part 'plan_item.g.dart';

@freezed
class PlanItem with _$PlanItem {
  const factory PlanItem({
    required String id,
    required DateTime date,
    required String? location,
    required String? extra,
    required bool? canceled,
    required Map<String, List<String>>? acolytes,
  }) = _PlanItem;

  factory PlanItem.fromJson(Map<String, dynamic> json) =>
      _$PlanItemFromJson(json);
}

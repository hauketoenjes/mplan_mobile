// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanItem _$PlanItemFromJson(Map<String, dynamic> json) {
  return _PlanItem.fromJson(json);
}

/// @nodoc
mixin _$PlanItem {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get extra => throw _privateConstructorUsedError;
  bool? get canceled => throw _privateConstructorUsedError;
  Map<String, List<String>>? get acolytes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanItemCopyWith<PlanItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanItemCopyWith<$Res> {
  factory $PlanItemCopyWith(PlanItem value, $Res Function(PlanItem) then) =
      _$PlanItemCopyWithImpl<$Res, PlanItem>;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String? location,
      String? extra,
      bool? canceled,
      Map<String, List<String>>? acolytes});
}

/// @nodoc
class _$PlanItemCopyWithImpl<$Res, $Val extends PlanItem>
    implements $PlanItemCopyWith<$Res> {
  _$PlanItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? location = freezed,
    Object? extra = freezed,
    Object? canceled = freezed,
    Object? acolytes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String?,
      canceled: freezed == canceled
          ? _value.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool?,
      acolytes: freezed == acolytes
          ? _value.acolytes
          : acolytes // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanItemImplCopyWith<$Res>
    implements $PlanItemCopyWith<$Res> {
  factory _$$PlanItemImplCopyWith(
          _$PlanItemImpl value, $Res Function(_$PlanItemImpl) then) =
      __$$PlanItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String? location,
      String? extra,
      bool? canceled,
      Map<String, List<String>>? acolytes});
}

/// @nodoc
class __$$PlanItemImplCopyWithImpl<$Res>
    extends _$PlanItemCopyWithImpl<$Res, _$PlanItemImpl>
    implements _$$PlanItemImplCopyWith<$Res> {
  __$$PlanItemImplCopyWithImpl(
      _$PlanItemImpl _value, $Res Function(_$PlanItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? location = freezed,
    Object? extra = freezed,
    Object? canceled = freezed,
    Object? acolytes = freezed,
  }) {
    return _then(_$PlanItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String?,
      canceled: freezed == canceled
          ? _value.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool?,
      acolytes: freezed == acolytes
          ? _value._acolytes
          : acolytes // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanItemImpl implements _PlanItem {
  const _$PlanItemImpl(
      {required this.id,
      required this.date,
      required this.location,
      required this.extra,
      required this.canceled,
      required final Map<String, List<String>>? acolytes})
      : _acolytes = acolytes;

  factory _$PlanItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanItemImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final String? location;
  @override
  final String? extra;
  @override
  final bool? canceled;
  final Map<String, List<String>>? _acolytes;
  @override
  Map<String, List<String>>? get acolytes {
    final value = _acolytes;
    if (value == null) return null;
    if (_acolytes is EqualUnmodifiableMapView) return _acolytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PlanItem(id: $id, date: $date, location: $location, extra: $extra, canceled: $canceled, acolytes: $acolytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.canceled, canceled) ||
                other.canceled == canceled) &&
            const DeepCollectionEquality().equals(other._acolytes, _acolytes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, location, extra,
      canceled, const DeepCollectionEquality().hash(_acolytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanItemImplCopyWith<_$PlanItemImpl> get copyWith =>
      __$$PlanItemImplCopyWithImpl<_$PlanItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanItemImplToJson(
      this,
    );
  }
}

abstract class _PlanItem implements PlanItem {
  const factory _PlanItem(
      {required final String id,
      required final DateTime date,
      required final String? location,
      required final String? extra,
      required final bool? canceled,
      required final Map<String, List<String>>? acolytes}) = _$PlanItemImpl;

  factory _PlanItem.fromJson(Map<String, dynamic> json) =
      _$PlanItemImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  String? get location;
  @override
  String? get extra;
  @override
  bool? get canceled;
  @override
  Map<String, List<String>>? get acolytes;
  @override
  @JsonKey(ignore: true)
  _$$PlanItemImplCopyWith<_$PlanItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foreword_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForewordModel _$ForewordModelFromJson(Map<String, dynamic> json) {
  return _ForewordModel.fromJson(json);
}

/// @nodoc
mixin _$ForewordModel {
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  DateTime get updatedOn => throw _privateConstructorUsedError;

  /// Serializes this ForewordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForewordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForewordModelCopyWith<ForewordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForewordModelCopyWith<$Res> {
  factory $ForewordModelCopyWith(
          ForewordModel value, $Res Function(ForewordModel) then) =
      _$ForewordModelCopyWithImpl<$Res, ForewordModel>;
  @useResult
  $Res call({String content, @JsonKey(name: 'updated_on') DateTime updatedOn});
}

/// @nodoc
class _$ForewordModelCopyWithImpl<$Res, $Val extends ForewordModel>
    implements $ForewordModelCopyWith<$Res> {
  _$ForewordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForewordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? updatedOn = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      updatedOn: null == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForewordModelImplCopyWith<$Res>
    implements $ForewordModelCopyWith<$Res> {
  factory _$$ForewordModelImplCopyWith(
          _$ForewordModelImpl value, $Res Function(_$ForewordModelImpl) then) =
      __$$ForewordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, @JsonKey(name: 'updated_on') DateTime updatedOn});
}

/// @nodoc
class __$$ForewordModelImplCopyWithImpl<$Res>
    extends _$ForewordModelCopyWithImpl<$Res, _$ForewordModelImpl>
    implements _$$ForewordModelImplCopyWith<$Res> {
  __$$ForewordModelImplCopyWithImpl(
      _$ForewordModelImpl _value, $Res Function(_$ForewordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForewordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? updatedOn = null,
  }) {
    return _then(_$ForewordModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      updatedOn: null == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForewordModelImpl implements _ForewordModel {
  const _$ForewordModelImpl(
      {required this.content,
      @JsonKey(name: 'updated_on') required this.updatedOn});

  factory _$ForewordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForewordModelImplFromJson(json);

  @override
  final String content;
  @override
  @JsonKey(name: 'updated_on')
  final DateTime updatedOn;

  @override
  String toString() {
    return 'ForewordModel(content: $content, updatedOn: $updatedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForewordModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, updatedOn);

  /// Create a copy of ForewordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForewordModelImplCopyWith<_$ForewordModelImpl> get copyWith =>
      __$$ForewordModelImplCopyWithImpl<_$ForewordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForewordModelImplToJson(
      this,
    );
  }
}

abstract class _ForewordModel implements ForewordModel {
  const factory _ForewordModel(
          {required final String content,
          @JsonKey(name: 'updated_on') required final DateTime updatedOn}) =
      _$ForewordModelImpl;

  factory _ForewordModel.fromJson(Map<String, dynamic> json) =
      _$ForewordModelImpl.fromJson;

  @override
  String get content;
  @override
  @JsonKey(name: 'updated_on')
  DateTime get updatedOn;

  /// Create a copy of ForewordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForewordModelImplCopyWith<_$ForewordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

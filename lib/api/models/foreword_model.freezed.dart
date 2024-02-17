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

Foreword _$ForewordFromJson(Map<String, dynamic> json) {
  return _Foreword.fromJson(json);
}

/// @nodoc
mixin _$Foreword {
  String get content => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForewordCopyWith<Foreword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForewordCopyWith<$Res> {
  factory $ForewordCopyWith(Foreword value, $Res Function(Foreword) then) =
      _$ForewordCopyWithImpl<$Res, Foreword>;
  @useResult
  $Res call({String content, DateTime date});
}

/// @nodoc
class _$ForewordCopyWithImpl<$Res, $Val extends Foreword>
    implements $ForewordCopyWith<$Res> {
  _$ForewordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForewordImplCopyWith<$Res>
    implements $ForewordCopyWith<$Res> {
  factory _$$ForewordImplCopyWith(
          _$ForewordImpl value, $Res Function(_$ForewordImpl) then) =
      __$$ForewordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, DateTime date});
}

/// @nodoc
class __$$ForewordImplCopyWithImpl<$Res>
    extends _$ForewordCopyWithImpl<$Res, _$ForewordImpl>
    implements _$$ForewordImplCopyWith<$Res> {
  __$$ForewordImplCopyWithImpl(
      _$ForewordImpl _value, $Res Function(_$ForewordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? date = null,
  }) {
    return _then(_$ForewordImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForewordImpl implements _Foreword {
  const _$ForewordImpl({required this.content, required this.date});

  factory _$ForewordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForewordImplFromJson(json);

  @override
  final String content;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'Foreword(content: $content, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForewordImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForewordImplCopyWith<_$ForewordImpl> get copyWith =>
      __$$ForewordImplCopyWithImpl<_$ForewordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForewordImplToJson(
      this,
    );
  }
}

abstract class _Foreword implements Foreword {
  const factory _Foreword(
      {required final String content,
      required final DateTime date}) = _$ForewordImpl;

  factory _Foreword.fromJson(Map<String, dynamic> json) =
      _$ForewordImpl.fromJson;

  @override
  String get content;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$ForewordImplCopyWith<_$ForewordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

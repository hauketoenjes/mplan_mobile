// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foreword_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForewordModel {

 String get content;@JsonKey(name: 'updated_on') DateTime get updatedOn;
/// Create a copy of ForewordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForewordModelCopyWith<ForewordModel> get copyWith => _$ForewordModelCopyWithImpl<ForewordModel>(this as ForewordModel, _$identity);

  /// Serializes this ForewordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForewordModel&&(identical(other.content, content) || other.content == content)&&(identical(other.updatedOn, updatedOn) || other.updatedOn == updatedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,updatedOn);

@override
String toString() {
  return 'ForewordModel(content: $content, updatedOn: $updatedOn)';
}


}

/// @nodoc
abstract mixin class $ForewordModelCopyWith<$Res>  {
  factory $ForewordModelCopyWith(ForewordModel value, $Res Function(ForewordModel) _then) = _$ForewordModelCopyWithImpl;
@useResult
$Res call({
 String content,@JsonKey(name: 'updated_on') DateTime updatedOn
});




}
/// @nodoc
class _$ForewordModelCopyWithImpl<$Res>
    implements $ForewordModelCopyWith<$Res> {
  _$ForewordModelCopyWithImpl(this._self, this._then);

  final ForewordModel _self;
  final $Res Function(ForewordModel) _then;

/// Create a copy of ForewordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? updatedOn = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,updatedOn: null == updatedOn ? _self.updatedOn : updatedOn // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ForewordModel].
extension ForewordModelPatterns on ForewordModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForewordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForewordModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForewordModel value)  $default,){
final _that = this;
switch (_that) {
case _ForewordModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForewordModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForewordModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content, @JsonKey(name: 'updated_on')  DateTime updatedOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForewordModel() when $default != null:
return $default(_that.content,_that.updatedOn);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content, @JsonKey(name: 'updated_on')  DateTime updatedOn)  $default,) {final _that = this;
switch (_that) {
case _ForewordModel():
return $default(_that.content,_that.updatedOn);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content, @JsonKey(name: 'updated_on')  DateTime updatedOn)?  $default,) {final _that = this;
switch (_that) {
case _ForewordModel() when $default != null:
return $default(_that.content,_that.updatedOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForewordModel implements ForewordModel {
  const _ForewordModel({required this.content, @JsonKey(name: 'updated_on') required this.updatedOn});
  factory _ForewordModel.fromJson(Map<String, dynamic> json) => _$ForewordModelFromJson(json);

@override final  String content;
@override@JsonKey(name: 'updated_on') final  DateTime updatedOn;

/// Create a copy of ForewordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForewordModelCopyWith<_ForewordModel> get copyWith => __$ForewordModelCopyWithImpl<_ForewordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForewordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForewordModel&&(identical(other.content, content) || other.content == content)&&(identical(other.updatedOn, updatedOn) || other.updatedOn == updatedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,updatedOn);

@override
String toString() {
  return 'ForewordModel(content: $content, updatedOn: $updatedOn)';
}


}

/// @nodoc
abstract mixin class _$ForewordModelCopyWith<$Res> implements $ForewordModelCopyWith<$Res> {
  factory _$ForewordModelCopyWith(_ForewordModel value, $Res Function(_ForewordModel) _then) = __$ForewordModelCopyWithImpl;
@override @useResult
$Res call({
 String content,@JsonKey(name: 'updated_on') DateTime updatedOn
});




}
/// @nodoc
class __$ForewordModelCopyWithImpl<$Res>
    implements _$ForewordModelCopyWith<$Res> {
  __$ForewordModelCopyWithImpl(this._self, this._then);

  final _ForewordModel _self;
  final $Res Function(_ForewordModel) _then;

/// Create a copy of ForewordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? updatedOn = null,}) {
  return _then(_ForewordModel(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,updatedOn: null == updatedOn ? _self.updatedOn : updatedOn // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

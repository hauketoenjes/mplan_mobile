// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanItem {

 String get id; DateTime get date; String? get location; String? get extra; bool? get canceled; Map<String, List<String>>? get acolytes;
/// Create a copy of PlanItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanItemCopyWith<PlanItem> get copyWith => _$PlanItemCopyWithImpl<PlanItem>(this as PlanItem, _$identity);

  /// Serializes this PlanItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.location, location) || other.location == location)&&(identical(other.extra, extra) || other.extra == extra)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&const DeepCollectionEquality().equals(other.acolytes, acolytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,location,extra,canceled,const DeepCollectionEquality().hash(acolytes));

@override
String toString() {
  return 'PlanItem(id: $id, date: $date, location: $location, extra: $extra, canceled: $canceled, acolytes: $acolytes)';
}


}

/// @nodoc
abstract mixin class $PlanItemCopyWith<$Res>  {
  factory $PlanItemCopyWith(PlanItem value, $Res Function(PlanItem) _then) = _$PlanItemCopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, String? location, String? extra, bool? canceled, Map<String, List<String>>? acolytes
});




}
/// @nodoc
class _$PlanItemCopyWithImpl<$Res>
    implements $PlanItemCopyWith<$Res> {
  _$PlanItemCopyWithImpl(this._self, this._then);

  final PlanItem _self;
  final $Res Function(PlanItem) _then;

/// Create a copy of PlanItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? location = freezed,Object? extra = freezed,Object? canceled = freezed,Object? acolytes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as String?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,acolytes: freezed == acolytes ? _self.acolytes : acolytes // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanItem].
extension PlanItemPatterns on PlanItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanItem value)  $default,){
final _that = this;
switch (_that) {
case _PlanItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanItem value)?  $default,){
final _that = this;
switch (_that) {
case _PlanItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  String? location,  String? extra,  bool? canceled,  Map<String, List<String>>? acolytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanItem() when $default != null:
return $default(_that.id,_that.date,_that.location,_that.extra,_that.canceled,_that.acolytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  String? location,  String? extra,  bool? canceled,  Map<String, List<String>>? acolytes)  $default,) {final _that = this;
switch (_that) {
case _PlanItem():
return $default(_that.id,_that.date,_that.location,_that.extra,_that.canceled,_that.acolytes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  String? location,  String? extra,  bool? canceled,  Map<String, List<String>>? acolytes)?  $default,) {final _that = this;
switch (_that) {
case _PlanItem() when $default != null:
return $default(_that.id,_that.date,_that.location,_that.extra,_that.canceled,_that.acolytes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanItem implements PlanItem {
  const _PlanItem({required this.id, required this.date, required this.location, required this.extra, required this.canceled, required final  Map<String, List<String>>? acolytes}): _acolytes = acolytes;
  factory _PlanItem.fromJson(Map<String, dynamic> json) => _$PlanItemFromJson(json);

@override final  String id;
@override final  DateTime date;
@override final  String? location;
@override final  String? extra;
@override final  bool? canceled;
 final  Map<String, List<String>>? _acolytes;
@override Map<String, List<String>>? get acolytes {
  final value = _acolytes;
  if (value == null) return null;
  if (_acolytes is EqualUnmodifiableMapView) return _acolytes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PlanItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanItemCopyWith<_PlanItem> get copyWith => __$PlanItemCopyWithImpl<_PlanItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.location, location) || other.location == location)&&(identical(other.extra, extra) || other.extra == extra)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&const DeepCollectionEquality().equals(other._acolytes, _acolytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,location,extra,canceled,const DeepCollectionEquality().hash(_acolytes));

@override
String toString() {
  return 'PlanItem(id: $id, date: $date, location: $location, extra: $extra, canceled: $canceled, acolytes: $acolytes)';
}


}

/// @nodoc
abstract mixin class _$PlanItemCopyWith<$Res> implements $PlanItemCopyWith<$Res> {
  factory _$PlanItemCopyWith(_PlanItem value, $Res Function(_PlanItem) _then) = __$PlanItemCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime date, String? location, String? extra, bool? canceled, Map<String, List<String>>? acolytes
});




}
/// @nodoc
class __$PlanItemCopyWithImpl<$Res>
    implements _$PlanItemCopyWith<$Res> {
  __$PlanItemCopyWithImpl(this._self, this._then);

  final _PlanItem _self;
  final $Res Function(_PlanItem) _then;

/// Create a copy of PlanItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? location = freezed,Object? extra = freezed,Object? canceled = freezed,Object? acolytes = freezed,}) {
  return _then(_PlanItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as String?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,acolytes: freezed == acolytes ? _self._acolytes : acolytes // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationModel {

 String get itemId; DateTime get date; Duration get notifyBefore; String get notificationSubtitle; String get appName; String get notificationBody;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.date, date) || other.date == date)&&(identical(other.notifyBefore, notifyBefore) || other.notifyBefore == notifyBefore)&&(identical(other.notificationSubtitle, notificationSubtitle) || other.notificationSubtitle == notificationSubtitle)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.notificationBody, notificationBody) || other.notificationBody == notificationBody));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,date,notifyBefore,notificationSubtitle,appName,notificationBody);

@override
String toString() {
  return 'NotificationModel(itemId: $itemId, date: $date, notifyBefore: $notifyBefore, notificationSubtitle: $notificationSubtitle, appName: $appName, notificationBody: $notificationBody)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
 String itemId, DateTime date, Duration notifyBefore, String notificationSubtitle, String appName, String notificationBody
});




}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? date = null,Object? notifyBefore = null,Object? notificationSubtitle = null,Object? appName = null,Object? notificationBody = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,notifyBefore: null == notifyBefore ? _self.notifyBefore : notifyBefore // ignore: cast_nullable_to_non_nullable
as Duration,notificationSubtitle: null == notificationSubtitle ? _self.notificationSubtitle : notificationSubtitle // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,notificationBody: null == notificationBody ? _self.notificationBody : notificationBody // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  DateTime date,  Duration notifyBefore,  String notificationSubtitle,  String appName,  String notificationBody)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.itemId,_that.date,_that.notifyBefore,_that.notificationSubtitle,_that.appName,_that.notificationBody);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  DateTime date,  Duration notifyBefore,  String notificationSubtitle,  String appName,  String notificationBody)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
return $default(_that.itemId,_that.date,_that.notifyBefore,_that.notificationSubtitle,_that.appName,_that.notificationBody);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  DateTime date,  Duration notifyBefore,  String notificationSubtitle,  String appName,  String notificationBody)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.itemId,_that.date,_that.notifyBefore,_that.notificationSubtitle,_that.appName,_that.notificationBody);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationModel implements NotificationModel {
  const _NotificationModel({required this.itemId, required this.date, required this.notifyBefore, required this.notificationSubtitle, required this.appName, required this.notificationBody});
  

@override final  String itemId;
@override final  DateTime date;
@override final  Duration notifyBefore;
@override final  String notificationSubtitle;
@override final  String appName;
@override final  String notificationBody;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.date, date) || other.date == date)&&(identical(other.notifyBefore, notifyBefore) || other.notifyBefore == notifyBefore)&&(identical(other.notificationSubtitle, notificationSubtitle) || other.notificationSubtitle == notificationSubtitle)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.notificationBody, notificationBody) || other.notificationBody == notificationBody));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,date,notifyBefore,notificationSubtitle,appName,notificationBody);

@override
String toString() {
  return 'NotificationModel(itemId: $itemId, date: $date, notifyBefore: $notifyBefore, notificationSubtitle: $notificationSubtitle, appName: $appName, notificationBody: $notificationBody)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
 String itemId, DateTime date, Duration notifyBefore, String notificationSubtitle, String appName, String notificationBody
});




}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? date = null,Object? notifyBefore = null,Object? notificationSubtitle = null,Object? appName = null,Object? notificationBody = null,}) {
  return _then(_NotificationModel(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,notifyBefore: null == notifyBefore ? _self.notifyBefore : notifyBefore // ignore: cast_nullable_to_non_nullable
as Duration,notificationSubtitle: null == notificationSubtitle ? _self.notificationSubtitle : notificationSubtitle // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,notificationBody: null == notificationBody ? _self.notificationBody : notificationBody // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationModel {
  String get itemId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Duration get notifyBefore => throw _privateConstructorUsedError;
  String get notificationSubtitle => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get notificationBody => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {String itemId,
      DateTime date,
      Duration notifyBefore,
      String notificationSubtitle,
      String appName,
      String notificationBody});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? date = null,
    Object? notifyBefore = null,
    Object? notificationSubtitle = null,
    Object? appName = null,
    Object? notificationBody = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notifyBefore: null == notifyBefore
          ? _value.notifyBefore
          : notifyBefore // ignore: cast_nullable_to_non_nullable
              as Duration,
      notificationSubtitle: null == notificationSubtitle
          ? _value.notificationSubtitle
          : notificationSubtitle // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      notificationBody: null == notificationBody
          ? _value.notificationBody
          : notificationBody // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      DateTime date,
      Duration notifyBefore,
      String notificationSubtitle,
      String appName,
      String notificationBody});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? date = null,
    Object? notifyBefore = null,
    Object? notificationSubtitle = null,
    Object? appName = null,
    Object? notificationBody = null,
  }) {
    return _then(_$NotificationModelImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notifyBefore: null == notifyBefore
          ? _value.notifyBefore
          : notifyBefore // ignore: cast_nullable_to_non_nullable
              as Duration,
      notificationSubtitle: null == notificationSubtitle
          ? _value.notificationSubtitle
          : notificationSubtitle // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      notificationBody: null == notificationBody
          ? _value.notificationBody
          : notificationBody // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl(
      {required this.itemId,
      required this.date,
      required this.notifyBefore,
      required this.notificationSubtitle,
      required this.appName,
      required this.notificationBody});

  @override
  final String itemId;
  @override
  final DateTime date;
  @override
  final Duration notifyBefore;
  @override
  final String notificationSubtitle;
  @override
  final String appName;
  @override
  final String notificationBody;

  @override
  String toString() {
    return 'NotificationModel(itemId: $itemId, date: $date, notifyBefore: $notifyBefore, notificationSubtitle: $notificationSubtitle, appName: $appName, notificationBody: $notificationBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notifyBefore, notifyBefore) ||
                other.notifyBefore == notifyBefore) &&
            (identical(other.notificationSubtitle, notificationSubtitle) ||
                other.notificationSubtitle == notificationSubtitle) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.notificationBody, notificationBody) ||
                other.notificationBody == notificationBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId, date, notifyBefore,
      notificationSubtitle, appName, notificationBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
      {required final String itemId,
      required final DateTime date,
      required final Duration notifyBefore,
      required final String notificationSubtitle,
      required final String appName,
      required final String notificationBody}) = _$NotificationModelImpl;

  @override
  String get itemId;
  @override
  DateTime get date;
  @override
  Duration get notifyBefore;
  @override
  String get notificationSubtitle;
  @override
  String get appName;
  @override
  String get notificationBody;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timeofday_provider.g.dart';

@riverpod
TimeOfDayEnum getTimeOfDay(Ref ref) {
  final hour = DateTime.now().hour;

  if (hour < 12) {
    return TimeOfDayEnum.morning;
  } else if (hour < 18) {
    return TimeOfDayEnum.afternoon;
  } else {
    return TimeOfDayEnum.evening;
  }
}

enum TimeOfDayEnum {
  morning,
  afternoon,
  evening,
}

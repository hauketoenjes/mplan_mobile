import 'package:timezone/timezone.dart' as tz;

extension DateTimeExtensions on DateTime {
  /// Converts the [DateTime] to the local timezone
  /// that is set in [tz.local].
  tz.TZDateTime toLocalTz() {
    return tz.TZDateTime.from(this, tz.local);
  }
}

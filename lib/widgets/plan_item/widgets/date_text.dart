import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mplan_mobile/misc/datetime_extensions.dart';

class DateText extends StatelessWidget {
  const DateText({required this.dateTime, super.key});

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("EEEE, dd. MMMM 'um' HH:mm", 'de_DE');

    return Text(
      dateFormat.format(dateTime.toLocalTz()),
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

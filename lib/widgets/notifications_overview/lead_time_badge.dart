import 'package:flutter/material.dart';
import 'package:mplan_mobile/misc/notification_lead_time.dart';
import 'package:mplan_mobile/misc/notification_lead_times_extensions.dart';

class LeadTimeBadge extends StatelessWidget {
  const LeadTimeBadge({required this.leadTime, super.key});

  final NotificationLeadTime leadTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Text(
        leadTime.shortRepresentation,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}

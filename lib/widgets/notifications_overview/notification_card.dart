import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/misc/list_extensions.dart';
import 'package:mplan_mobile/misc/notification_lead_times_extensions.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_model.dart';
import 'package:mplan_mobile/widgets/notifications_overview/lead_time_badge.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/date_text.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/information_row.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/wrapping_card.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.notification,
    required this.onDismissed,
    super.key,
  });

  final NotificationModel notification;
  final void Function() onDismissed;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(notification.id),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onDismissed(),
      background: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.red,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16),
        margin: const EdgeInsets.only(bottom: 16),
        child: const Icon(
          Icons.delete_outlined,
          color: Colors.white,
          size: 32,
        ),
      ),
      child: WrappingCard(
        children: <Widget>[
          DateText(dateTime: notification.planItemDate),
          InformationRow(
            icon: Icons.location_on,
            text: notification.planItemLocation ??
                context.l10n.planCard_noLocation,
          ),
          InformationRow(
            icon: Icons.info,
            text: notification.planItemExtra ??
                context.l10n.planCard_noInformation,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: InformationRow(
                  icon: Icons.alarm,
                  text: notification.notificationLeadTime.translation(context),
                ),
              ),
              LeadTimeBadge(leadTime: notification.notificationLeadTime),
            ],
          ),
        ].genericJoin(
          const SizedBox(height: 8),
        ),
      ).animate().fadeIn(),
    );
  }
}

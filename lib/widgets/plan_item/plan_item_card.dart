import 'package:flutter/material.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/misc/list_extensions.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/date_text.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/grouped_acolytes.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/information_row.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/wrapping_card.dart';

class PlanItemCard extends StatelessWidget {
  const PlanItemCard({
    required this.item,
    super.key,
    this.highlightedName,
    this.onAddToCalendar,
    this.onSetReminder,
    this.onRemoveReminder,
  });

  final PlanItem item;
  final String? highlightedName;
  final void Function()? onAddToCalendar;
  final void Function()? onSetReminder;
  final void Function()? onRemoveReminder;

  @override
  Widget build(BuildContext context) {
    return WrappingCard(
      children: <Widget>[
        DateText(dateTime: item.date.toLocal()),
        InformationRow(
          icon: Icons.location_on,
          text: item.location ?? context.l10n.planCard_noLocation,
        ),
        InformationRow(
          icon: Icons.info,
          text: item.extra ?? context.l10n.planCard_noInformation,
        ),
        GroupedAcolytes(
          acolytes: item.acolytes ?? {},
          highlightedName: highlightedName,
        ),
        if (onAddToCalendar != null ||
            onSetReminder != null ||
            onRemoveReminder != null)
          Wrap(
            spacing: 4,
            runSpacing: 4,
            alignment: WrapAlignment.end,
            children: [
              if (onAddToCalendar != null)
                IconButton(
                  onPressed: onAddToCalendar,
                  tooltip: context.l10n.general_addToCalendar,
                  color: Theme.of(context).colorScheme.primary,
                  icon: const Icon(Icons.edit_calendar),
                ),
              if (onRemoveReminder != null)
                TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.notifications_off),
                  label: Text(context.l10n.reminder_remove),
                ),
              if (onSetReminder != null)
                TextButton.icon(
                  icon: const Icon(Icons.notification_add),
                  onPressed: onSetReminder,
                  label: Text(
                    context.l10n.reminder_setReminder,
                  ),
                ),
            ],
          ),
      ].genericJoin(
        const SizedBox(height: 8),
      ),
    );
  }
}

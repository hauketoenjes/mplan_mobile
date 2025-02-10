import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/date_text.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/grouped_acolytes.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/information_row.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/reminder_button.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/wrapping_card.dart';

class PlanItemCard extends StatelessWidget {
  const PlanItemCard({
    required this.item,
    super.key,
    this.highlightedName,
    this.onAddToCalendar,
    this.canSetReminder = false,
  });

  final PlanItem item;
  final String? highlightedName;
  final void Function()? onAddToCalendar;
  final bool canSetReminder;

  @override
  Widget build(BuildContext context) {
    return WrappingCard(
      spacing: 8,
      children: <Widget>[
        DateText(dateTime: item.date),
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
        if (onAddToCalendar != null || canSetReminder)
          Wrap(
            spacing: 4,
            runSpacing: 4,
            alignment: WrapAlignment.end,
            children: [
              if (onAddToCalendar != null)
                IconButton(
                  onPressed: onAddToCalendar,
                  tooltip: context.l10n.general_addToCalendar,
                  color: context.primaryColor,
                  icon: const Icon(Icons.edit_calendar_outlined),
                ),
              if (canSetReminder)
                ReminderButton(
                  item: item,
                ),
            ],
          ),
      ],
    ).animate().fadeIn();
  }
}

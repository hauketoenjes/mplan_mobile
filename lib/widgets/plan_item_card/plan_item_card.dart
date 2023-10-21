import 'package:flutter/material.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/misc/list_extensions.dart';
import 'package:mplan_mobile/widgets/plan_item_card/widgets/date_text.dart';
import 'package:mplan_mobile/widgets/plan_item_card/widgets/grouped_acolytes.dart';
import 'package:mplan_mobile/widgets/plan_item_card/widgets/information_row.dart';
import 'package:mplan_mobile/widgets/plan_item_card/widgets/wrapping_card.dart';

class PlanItemCard extends StatelessWidget {
  const PlanItemCard({
    required this.item,
    super.key,
    this.highlightedName,
    this.onAddToCalendar,
  });

  final PlanItem item;
  final String? highlightedName;
  final void Function()? onAddToCalendar;

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
        if (onAddToCalendar != null)
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.end,
            children: [
              TextButton.icon(
                icon: const Icon(Icons.edit_calendar),
                onPressed: onAddToCalendar,
                label: Text(
                  context.l10n.general_addToCalendar,
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

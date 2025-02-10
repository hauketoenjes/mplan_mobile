import 'dart:async';

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/personal_name_provider/personal_name_provider.dart';
import 'package:mplan_mobile/providers/plan_provider/plan_provider.dart';
import 'package:mplan_mobile/providers/timeofday_provider/timeofday_provider.dart';
import 'package:mplan_mobile/widgets/layout/layout.dart';
import 'package:mplan_mobile/widgets/layout/personal_plan/name_text_field.dart';
import 'package:mplan_mobile/widgets/plan_item/plan_item_card.dart';
import 'package:mplan_mobile/widgets/plan_item/plan_item_list.dart';
import 'package:mplan_mobile/widgets/utils/empty_list.dart';
import 'package:mplan_mobile/widgets/utils/network_error.dart';
import 'package:timeago/timeago.dart' as timeago;

class PersonalPlanPage extends ConsumerWidget {
  const PersonalPlanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Get's the intro text for the given plan items
    String getIntroText(List<PlanItem> filteredItems) {
      // Define the intro text
      var text = context.l10n.personalPlanPage_intro(filteredItems.length);

      // If there are items, add the next time as text to the intro
      if (filteredItems.isNotEmpty) {
        final timeagoText = timeago.format(
          filteredItems.first.date,
          allowFromNow: true,
          locale: 'de',
        );
        text += ' ${context.l10n.personalPlanPage_nextTime(timeagoText)}';
      }

      return text;
    }

    final currentName = ref.watch(nameProvider);
    final plan = ref.watch(fetchPlanProvider());
    final timeOfDay = ref.watch(getTimeOfDayProvider);

    final filteredPlan = plan.whenData(
      (value) => filterPlan(value, currentName),
    );

    return Layout(
      pageTitle: switch (timeOfDay) {
        TimeOfDayEnum.morning => context.l10n.personalPlanPage_greeting_morning,
        TimeOfDayEnum.afternoon =>
          context.l10n.personalPlanPage_greeting_afternoon,
        TimeOfDayEnum.evening => context.l10n.personalPlanPage_greeting_evening,
      },
      subtitle: const NameTextField(),
      informativeText: switch (filteredPlan) {
        AsyncData(:final value) => currentName.isEmpty
            ? context.l10n.personalPlanPage_emptyName
            : getIntroText(value),
        _ => null,
      },
      child: switch (filteredPlan) {
        AsyncData(:final value) => value.isEmpty && currentName.isNotEmpty
            ? const Center(child: EmptyList())
            : PlanItemList(
                items: value,
                itemBuilder: (item) => PlanItemCard(
                  item: item,
                  highlightedName: currentName,
                  onAddToCalendar: () {
                    final event = getEvent(item, currentName, context);
                    unawaited(Add2Calendar.addEvent2Cal(event));
                  },
                  canSetReminder: true,
                ),
                onRefresh: () =>
                    ref.refresh(fetchPlanProvider(forceRefresh: true).future),
              ),
        AsyncError() => const Center(child: NetworkError()),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

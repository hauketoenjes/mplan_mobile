import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'plan_provider.g.dart';

/// Provider to fetch the plan.
@riverpod
Future<List<PlanItem>> fetchPlan(
  Ref ref, {
  bool forceRefresh = false,
}) async {
  final planRepository = ref.watch(mplanRepositoryProvider);
  return planRepository.getPlan(skipCache: forceRefresh);
}

/// Filters the given [plan] by the given [name].
/// Accounts for lower- and uppercase names and trimms the name.
List<PlanItem> filterPlan(List<PlanItem> plan, String name) {
  if (name.isEmpty) {
    return [];
  }

  return plan.where((element) {
    final acolytes =
        element.acolytes?.entries.expand((element) => element.value);

    return acolytes?.any(
          (element) =>
              element.toLowerCase().contains(name.trim().toLowerCase()),
        ) ??
        false;
  }).toList();
}

/// Returns the role of the given [name] in the given [item].
/// Accounts for lower- and uppercase names and trimms the name.
String? _getRole(PlanItem item, String name) {
  return item.acolytes?.entries.firstWhereOrNull((element) {
    return element.value.any(
      (element) => element.toLowerCase().contains(name.trim().toLowerCase()),
    );
  })?.key;
}

/// Returns a Calendar [Event] for the given [item] and [name].
Event getEvent(PlanItem item, String name, BuildContext context) {
  final role = _getRole(item, name);

  return Event(
    title: context.l10n.personalPlanPage_calendarTitle,
    description: context.l10n.personalPlanPage_calendarDescription(
      role ?? '-',
      item.location ?? '-',
      item.extra ?? '-',
    ),
    startDate: item.date,
    location: item.location,
    endDate: item.date.add(const Duration(hours: 1)),
  );
}

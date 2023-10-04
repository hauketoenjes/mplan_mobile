import 'dart:async';

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/api/repositories/plan_repository.dart';
import 'package:mplan_mobile/constants.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/widgets/plan_item_card.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;

class PersonalPlanPage extends StatefulWidget {
  const PersonalPlanPage({super.key});

  @override
  State<PersonalPlanPage> createState() => _PersonalPlanPageState();
}

class _PersonalPlanPageState extends State<PersonalPlanPage> {
  final TextEditingController _controller = TextEditingController();
  final _prefs = GetIt.I<SharedPreferences>();
  final PlanRepository _planRepository = GetIt.I<PlanRepository>();

  var _currentName = '';
  late Future<List<PlanItem>> _plan;

  Future<void> _saveName(String name) async {
    setState(() {
      _currentName = name;
    });

    await _prefs.setString(nameKey, name);
  }

  /// Filters the given [plan] by the given [name].
  /// Accounts for lower- and uppercase names and trimms the name.
  List<PlanItem> _filterPlan(List<PlanItem> plan, String name) {
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
  Event _getEvent(PlanItem item, String name, BuildContext context) {
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

  @override
  void initState() {
    super.initState();
    _plan = _planRepository.getPlan();

    final name = _prefs.getString(nameKey);
    if (name != null) {
      _controller.text = name;
      setState(() {
        _currentName = name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.personalPlanPage_greeting,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          TextField(
            autocorrect: false,
            maxLines: 3,
            minLines: 1,
            textInputAction: TextInputAction.done,
            autofillHints: const [AutofillHints.name],
            decoration: InputDecoration(
              hintText: context.l10n.personalPlanPage_hint,
              hintStyle: const TextStyle(decoration: TextDecoration.none),
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
            ),
            controller: _controller,
            onChanged: _saveName,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: FutureBuilder<List<PlanItem>>(
              future: _plan,
              builder: (context, snapshot) {
                //
                // Loading state
                //
                if (!snapshot.hasData && !snapshot.hasError) {
                  return const Center(child: CircularProgressIndicator());
                }

                //
                // Error state
                //
                if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                //
                // Success state
                //

                // If there are no items, return a text
                if (_currentName.isEmpty) {
                  return Text(context.l10n.personalPlanPage_emptyName);
                }

                // Filter the items by the current name
                final filteredItems = _filterPlan(snapshot.data!, _currentName);

                // Define the intro text
                var text =
                    context.l10n.personalPlanPage_intro(filteredItems.length);

                // If there are items, add the next time as text to the intro
                if (filteredItems.isNotEmpty) {
                  final timeagoText = timeago.format(
                    filteredItems.first.date,
                    allowFromNow: true,
                    locale: 'de',
                  );
                  text +=
                      ' ${context.l10n.personalPlanPage_nextTime(timeagoText)}';
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text),
                    const SizedBox(height: 16),
                    Expanded(
                      child: ListView.builder(
                        itemCount: filteredItems.length,
                        itemBuilder: (context, index) {
                          final item = filteredItems[index];
                          return PlanItemCard(
                            item: item,
                            highlightedName: _currentName,
                            onAddToCalendar: () {
                              // Get event and add it to the calendar
                              final event =
                                  _getEvent(item, _currentName, context);
                              unawaited(Add2Calendar.addEvent2Cal(event));
                            },
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

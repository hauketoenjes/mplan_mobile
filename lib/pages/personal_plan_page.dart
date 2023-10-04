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
                if (!snapshot.hasData && !snapshot.hasError) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                final items = snapshot.data!.where((element) {
                  final acolytes = element.acolytes!.entries
                      .expand((element) => element.value);

                  return acolytes.any(
                    (element) => element
                        .toLowerCase()
                        .contains(_currentName.trim().toLowerCase()),
                  );
                }).toList();

                var text = context.l10n.personalPlanPage_intro(items.length);

                if (items.isNotEmpty) {
                  final timeagoText = timeago.format(
                    items.first.date,
                    allowFromNow: true,
                    locale: 'de',
                  );

                  text +=
                      ' ${context.l10n.personalPlanPage_nextTime(timeagoText)}';
                }

                if (_currentName.isEmpty) {
                  return Text(context.l10n.personalPlanPage_emptyName);
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text),
                    const SizedBox(height: 16),
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return PlanItemCard(
                            item: item,
                            highlightedName: _currentName,
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

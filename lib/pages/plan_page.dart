import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/api/repositories/plan_repository.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/widgets/plan_item_card.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  final PlanRepository _planRepository = GetIt.I<PlanRepository>();
  late Future<List<PlanItem>> _plan;

  @override
  void initState() {
    super.initState();

    _plan = _planRepository.getPlan();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.planPage_title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: FutureBuilder<List<PlanItem>>(
              future: _plan,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final item = snapshot.data![index];
                      return PlanItemCard(item: item);
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}

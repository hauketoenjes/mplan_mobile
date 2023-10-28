import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/plan_provider/plan_provider.dart';
import 'package:mplan_mobile/widgets/layout/layout.dart';
import 'package:mplan_mobile/widgets/plan_item/plan_item_card.dart';
import 'package:mplan_mobile/widgets/plan_item/plan_item_list.dart';
import 'package:mplan_mobile/widgets/utils/network_error.dart';

class PlanPage extends ConsumerWidget {
  const PlanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plan = ref.watch(fetchPlanProvider());

    return Layout(
      pageTitle: context.l10n.planPage_title,
      child: switch (plan) {
        AsyncData(:final value) => PlanItemList(
            items: value,
            itemBuilder: (item) => PlanItemCard(item: item),
            onRefresh: () =>
                ref.refresh(fetchPlanProvider(forceRefresh: true).future),
          ),
        AsyncError() => const Center(child: NetworkError()),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

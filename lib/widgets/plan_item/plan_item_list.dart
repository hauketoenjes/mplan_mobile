import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';

class PlanItemList extends StatelessWidget {
  const PlanItemList({
    required this.items,
    required this.itemBuilder,
    required this.onRefresh,
    super.key,
  });

  final List<PlanItem> items;
  final Widget Function(PlanItem item) itemBuilder;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return itemBuilder(item);
          },
        ),
      ).paddingSymmetric(horizontal: 16),
    );
  }
}

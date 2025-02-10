import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/grouped_role.dart';

class GroupedAcolytes extends StatelessWidget {
  const GroupedAcolytes({
    required this.acolytes,
    super.key,
    this.highlightedName,
  });

  final Map<String, List<String>> acolytes;
  final String? highlightedName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: acolytes.entries.map((entry) {
        return GroupedRole(
          role: entry.key,
          acolytes: entry.value,
          highlightedName: highlightedName,
        ).paddingOnly(top: 8);
      }).toList(),
    );
  }
}

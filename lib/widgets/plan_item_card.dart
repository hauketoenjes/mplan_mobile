import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/misc/list_extensions.dart';

class PlanItemCard extends StatelessWidget {
  const PlanItemCard({
    Key? key,
    required this.item,
    this.highlightedName,
  }) : super(key: key);

  final PlanItem item;
  final String? highlightedName;

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("EEEE, dd. MMMM 'um' HH:mm", 'de_DE');

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              format.format(item.date.toLocal()),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.location_on, size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(item.location ?? "Kein Ort"),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.info, size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(item.extra ?? "Keine Info"),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ...item.acolytes?.entries.map(
                  (e) {
                    if (e.value.isEmpty) {
                      return const SizedBox();
                    }

                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.key,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: e.value
                                  .map((e) {
                                    final highlighted =
                                        highlightedName != null &&
                                            e.toLowerCase().contains(
                                                highlightedName!
                                                    .trim()
                                                    .toLowerCase());

                                    return TextSpan(
                                      text: e,
                                      style: TextStyle(
                                        decoration: highlighted
                                            ? TextDecoration.underline
                                            : null,
                                        decorationColor: highlighted
                                            ? Theme.of(context)
                                                .colorScheme
                                                .primary
                                            : null,
                                      ),
                                    );
                                  })
                                  .toList()
                                  .genericJoin(const TextSpan(text: " · ")),
                            ),
                          ),
                          // Text(e.value.join(" · "))
                        ],
                      ),
                    );
                  },
                ) ??
                [],
          ],
        ),
      ),
    );
  }
}

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:mplan_mobile/misc/list_extensions.dart';

class GroupedRole extends StatelessWidget {
  const GroupedRole({
    required this.role,
    required this.acolytes,
    super.key,
    this.highlightedName,
  });

  final String role;
  final List<String> acolytes;
  final String? highlightedName;

  @override
  Widget build(BuildContext context) {
    final textSpans = acolytes.map((acolyte) {
      final isHighighted = highlightedName != null &&
          acolyte.toLowerCase().contains(highlightedName!.trim().toLowerCase());

      return TextSpan(
        text: acolyte,
        style: TextStyle(
          decoration: isHighighted ? TextDecoration.underline : null,
          decorationColor:
              isHighighted ? Theme.of(context).colorScheme.primary : null,
        ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          role,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        RichText(
          text: TextSpan(
            style: context.bodyMedium,
            children: textSpans.genericJoin(
              const TextSpan(text: ' · '),
            ),
          ),
        ),
      ],
    );
  }
}

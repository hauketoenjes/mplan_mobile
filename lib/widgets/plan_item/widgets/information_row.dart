import 'package:flutter/widgets.dart';

class InformationRow extends StatelessWidget {
  const InformationRow({
    required this.icon,
    required this.text,
    super.key,
  });

  final IconData icon;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16),
        const SizedBox(width: 8),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}

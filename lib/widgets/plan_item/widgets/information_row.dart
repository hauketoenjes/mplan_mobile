import 'package:awesome_extensions/awesome_extensions.dart';
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
      spacing: 8,
      children: [
        Icon(icon, size: 16),
        Text(text).expanded(),
      ],
    );
  }
}

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mplan_mobile/l10n/l10n.dart';

class RefreshedAt extends StatelessWidget {
  const RefreshedAt({required this.refreshedAt, super.key});

  final DateTime refreshedAt;

  @override
  Widget build(BuildContext context) {
    final format = DateFormat('dd.MM.yyyy HH:mm');

    return Text(
      // Ingore because of string substitution
      // ignore: lines_longer_than_80_chars
      '${context.l10n.forewordPage_refreshedAt} ${format.format(refreshedAt.toLocal())}',
      style: context.bodySmall,
    ).paddingOnly(top: 8);
  }
}

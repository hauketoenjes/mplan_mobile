import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/foreword_provider/foreword_provider.dart';
import 'package:mplan_mobile/widgets/foreword/foreword_view.dart';
import 'package:mplan_mobile/widgets/layout/layout.dart';
import 'package:mplan_mobile/widgets/utils/network_error.dart';

class ForewordPage extends ConsumerWidget {
  const ForewordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foreword = ref.watch(fetchForewordProvider(forceRefresh: true));

    return Layout(
      pageTitle: context.l10n.forewordPage_title,
      child: switch (foreword) {
        AsyncData(:final value) => ForewordView(
            foreword: value,
            onRefresh: () =>
                ref.refresh(fetchForewordProvider(forceRefresh: true).future),
          ),
        AsyncError() => const Center(child: NetworkError()),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

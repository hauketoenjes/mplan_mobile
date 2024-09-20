import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:mplan_mobile/api/models/foreword_model.dart';
import 'package:mplan_mobile/widgets/foreword/refreshed_at.dart';

class ForewordView extends StatelessWidget {
  const ForewordView({
    required this.foreword,
    required this.onRefresh,
    super.key,
  });

  final ForewordModel foreword;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                HtmlWidget(foreword.content),
                const SizedBox(height: 16),
                RefreshedAt(refreshedAt: foreword.updatedOn),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

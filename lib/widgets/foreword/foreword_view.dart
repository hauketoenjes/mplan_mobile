import 'package:awesome_extensions/awesome_extensions.dart';
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
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HtmlWidget(foreword.content),
              RefreshedAt(refreshedAt: foreword.updatedOn),
              const SizedBox(),
            ],
          ),
        ),
      ).paddingSymmetric(horizontal: 16),
    );
  }
}

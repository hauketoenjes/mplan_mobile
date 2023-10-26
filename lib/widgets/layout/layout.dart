import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({
    required this.pageTitle,
    required this.child,
    super.key,
    this.subtitle,
    this.informativeText,
  });

  final String pageTitle;
  final Widget? subtitle;
  final String? informativeText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pageTitle,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              if (subtitle != null) subtitle!,
              const SizedBox(height: 16),
              if (informativeText != null) ...[
                Text(informativeText!),
                const SizedBox(height: 16),
              ],
            ],
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}

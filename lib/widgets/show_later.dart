import 'package:flutter/material.dart';

/// Shows the given [child] after the given [duration].
class ShowLater extends StatelessWidget {
  const ShowLater({required this.duration, required this.child, super.key});

  final Duration duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future<void>.delayed(duration),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return child;
        }

        return const SizedBox();
      },
    );
  }
}

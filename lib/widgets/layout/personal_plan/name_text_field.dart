import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/personal_name_provider/personal_name_provider.dart';

class NameTextField extends ConsumerStatefulWidget {
  const NameTextField({super.key});

  @override
  ConsumerState<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends ConsumerState<NameTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Initialize the text field with the current name.
    _controller.text = ref.read(nameProvider) ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      maxLines: 3,
      minLines: 1,
      textInputAction: TextInputAction.done,
      autofillHints: const [AutofillHints.name],
      decoration: InputDecoration(
        hintText: context.l10n.personalPlanPage_hint,
        hintStyle: const TextStyle(decoration: TextDecoration.none),
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
      ),
      controller: _controller,
      onChanged: (value) => ref.read(nameProvider.notifier).onChange(value),
      onSubmitted: (value) => HapticFeedback.mediumImpact(),
      style: context.displaySmall?.copyWith(
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

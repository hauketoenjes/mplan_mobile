import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/constants.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';

final nameProvider = StateProvider<String>((ref) {
  final preferences = ref.watch(sharedPreferencesProvider);
  final currentValue = preferences.getString(nameKey);

  ref.listenSelf((previous, next) {
    if (previous != next) {
      preferences.setString(nameKey, next);
    }
  });

  return currentValue ?? '';
});

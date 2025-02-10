import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/constants.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';

final nameProvider = NotifierProvider<NameProvider, String>(NameProvider.new);

class NameProvider extends Notifier<String> {
  @override
  String build() {
    final preferences = ref.watch(sharedPreferencesProvider);
    final currentValue = preferences.getString(nameKey);

    listenSelf((previous, next) {
      if (previous != next) {
        preferences.setString(nameKey, next);
      }
    });

    return currentValue ?? '';
  }

  /// Changes the name.
  void onChange(String value) => state = value;
}

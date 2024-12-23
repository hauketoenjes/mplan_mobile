import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/api/models/foreword_model.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foreword_provider.g.dart';

/// Provider to fetch the foreword.
@riverpod
Future<ForewordModel> fetchForeword(
  Ref ref, {
  bool forceRefresh = false,
}) async {
  final planRepository = ref.watch(mplanRepositoryProvider);
  return planRepository.getForeword(skipCache: forceRefresh);
}

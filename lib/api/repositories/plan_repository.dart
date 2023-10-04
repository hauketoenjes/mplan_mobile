import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';

class PlanRepository {
  /// Cache options. Use the default store (Hive).
  static final _cacheOptions = CacheOptions(
    store: HiveCacheStore(null),
  );

  /// Create a new Dio instance.
  /// Add the cache interceptor to dio.
  final _dio = Dio()
    ..interceptors.add(
      DioCacheInterceptor(options: _cacheOptions),
    );

  /// Get the plan from the API.
  Future<List<PlanItem>> getPlan() async {
    final response = await _dio.get(
      'https://europe-west3-messdienerplan-984ef.cloudfunctions.net/getPlan',
    );

    final plan =
        response.data.map<PlanItem>((item) => PlanItem.fromJson(item)).toList();

    return plan;
  }
}

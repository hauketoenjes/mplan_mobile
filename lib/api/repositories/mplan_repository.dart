import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:mplan_mobile/api/models/foreword_model.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/app_configuration.dart';

class MplanRepository {
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
  Future<List<PlanItem>> getPlan({bool skipCache = false}) async {
    final response = await _dio.get<List<dynamic>>(
      planFetchUrl.toString(),
      options: skipCache
          ? _cacheOptions.copyWith(policy: CachePolicy.refresh).toOptions()
          : null,
    );

    final plan = response.data
            ?.map((e) => e as Map<String, dynamic>)
            .map(PlanItem.fromJson)
            .toList() ??
        [];

    return plan;
  }

  /// Get the foreword from the API.
  Future<ForewordModel> getForeword({bool skipCache = false}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      forewordFetchUrl.toString(),
      options: skipCache
          ? _cacheOptions.copyWith(policy: CachePolicy.refresh).toOptions()
          : null,
    );

    return ForewordModel.fromJson(
      response.data!['data'] as Map<String, dynamic>,
    );
  }
}

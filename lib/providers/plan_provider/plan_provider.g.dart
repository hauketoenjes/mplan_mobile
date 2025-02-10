// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPlanHash() => r'86ec62fb4b978d8a65d49e825b5dfe97606bbe40';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Provider to fetch the plan.
///
/// Copied from [fetchPlan].
@ProviderFor(fetchPlan)
const fetchPlanProvider = FetchPlanFamily();

/// Provider to fetch the plan.
///
/// Copied from [fetchPlan].
class FetchPlanFamily extends Family<AsyncValue<List<PlanItem>>> {
  /// Provider to fetch the plan.
  ///
  /// Copied from [fetchPlan].
  const FetchPlanFamily();

  /// Provider to fetch the plan.
  ///
  /// Copied from [fetchPlan].
  FetchPlanProvider call({
    bool forceRefresh = false,
  }) {
    return FetchPlanProvider(
      forceRefresh: forceRefresh,
    );
  }

  @override
  FetchPlanProvider getProviderOverride(
    covariant FetchPlanProvider provider,
  ) {
    return call(
      forceRefresh: provider.forceRefresh,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchPlanProvider';
}

/// Provider to fetch the plan.
///
/// Copied from [fetchPlan].
class FetchPlanProvider extends AutoDisposeFutureProvider<List<PlanItem>> {
  /// Provider to fetch the plan.
  ///
  /// Copied from [fetchPlan].
  FetchPlanProvider({
    bool forceRefresh = false,
  }) : this._internal(
          (ref) => fetchPlan(
            ref as FetchPlanRef,
            forceRefresh: forceRefresh,
          ),
          from: fetchPlanProvider,
          name: r'fetchPlanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPlanHash,
          dependencies: FetchPlanFamily._dependencies,
          allTransitiveDependencies: FetchPlanFamily._allTransitiveDependencies,
          forceRefresh: forceRefresh,
        );

  FetchPlanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.forceRefresh,
  }) : super.internal();

  final bool forceRefresh;

  @override
  Override overrideWith(
    FutureOr<List<PlanItem>> Function(FetchPlanRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPlanProvider._internal(
        (ref) => create(ref as FetchPlanRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        forceRefresh: forceRefresh,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<PlanItem>> createElement() {
    return _FetchPlanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPlanProvider && other.forceRefresh == forceRefresh;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, forceRefresh.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchPlanRef on AutoDisposeFutureProviderRef<List<PlanItem>> {
  /// The parameter `forceRefresh` of this provider.
  bool get forceRefresh;
}

class _FetchPlanProviderElement
    extends AutoDisposeFutureProviderElement<List<PlanItem>> with FetchPlanRef {
  _FetchPlanProviderElement(super.provider);

  @override
  bool get forceRefresh => (origin as FetchPlanProvider).forceRefresh;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

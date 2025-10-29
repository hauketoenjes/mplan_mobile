// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider to fetch the plan.

@ProviderFor(fetchPlan)
const fetchPlanProvider = FetchPlanFamily._();

/// Provider to fetch the plan.

final class FetchPlanProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PlanItem>>,
          List<PlanItem>,
          FutureOr<List<PlanItem>>
        >
    with $FutureModifier<List<PlanItem>>, $FutureProvider<List<PlanItem>> {
  /// Provider to fetch the plan.
  const FetchPlanProvider._({
    required FetchPlanFamily super.from,
    required bool super.argument,
  }) : super(
         retry: null,
         name: r'fetchPlanProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchPlanHash();

  @override
  String toString() {
    return r'fetchPlanProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<PlanItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PlanItem>> create(Ref ref) {
    final argument = this.argument as bool;
    return fetchPlan(ref, forceRefresh: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPlanProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchPlanHash() => r'86ec62fb4b978d8a65d49e825b5dfe97606bbe40';

/// Provider to fetch the plan.

final class FetchPlanFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<PlanItem>>, bool> {
  const FetchPlanFamily._()
    : super(
        retry: null,
        name: r'fetchPlanProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider to fetch the plan.

  FetchPlanProvider call({bool forceRefresh = false}) =>
      FetchPlanProvider._(argument: forceRefresh, from: this);

  @override
  String toString() => r'fetchPlanProvider';
}

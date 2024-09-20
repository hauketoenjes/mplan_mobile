// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreword_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchForewordHash() => r'e4e7f82d976f3a52f3fb3c6ccf4f5ebab2e10333';

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

/// Provider to fetch the foreword.
///
/// Copied from [fetchForeword].
@ProviderFor(fetchForeword)
const fetchForewordProvider = FetchForewordFamily();

/// Provider to fetch the foreword.
///
/// Copied from [fetchForeword].
class FetchForewordFamily extends Family<AsyncValue<ForewordModel>> {
  /// Provider to fetch the foreword.
  ///
  /// Copied from [fetchForeword].
  const FetchForewordFamily();

  /// Provider to fetch the foreword.
  ///
  /// Copied from [fetchForeword].
  FetchForewordProvider call({
    bool forceRefresh = false,
  }) {
    return FetchForewordProvider(
      forceRefresh: forceRefresh,
    );
  }

  @override
  FetchForewordProvider getProviderOverride(
    covariant FetchForewordProvider provider,
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
  String? get name => r'fetchForewordProvider';
}

/// Provider to fetch the foreword.
///
/// Copied from [fetchForeword].
class FetchForewordProvider extends AutoDisposeFutureProvider<ForewordModel> {
  /// Provider to fetch the foreword.
  ///
  /// Copied from [fetchForeword].
  FetchForewordProvider({
    bool forceRefresh = false,
  }) : this._internal(
          (ref) => fetchForeword(
            ref as FetchForewordRef,
            forceRefresh: forceRefresh,
          ),
          from: fetchForewordProvider,
          name: r'fetchForewordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchForewordHash,
          dependencies: FetchForewordFamily._dependencies,
          allTransitiveDependencies:
              FetchForewordFamily._allTransitiveDependencies,
          forceRefresh: forceRefresh,
        );

  FetchForewordProvider._internal(
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
    FutureOr<ForewordModel> Function(FetchForewordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchForewordProvider._internal(
        (ref) => create(ref as FetchForewordRef),
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
  AutoDisposeFutureProviderElement<ForewordModel> createElement() {
    return _FetchForewordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchForewordProvider && other.forceRefresh == forceRefresh;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, forceRefresh.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchForewordRef on AutoDisposeFutureProviderRef<ForewordModel> {
  /// The parameter `forceRefresh` of this provider.
  bool get forceRefresh;
}

class _FetchForewordProviderElement
    extends AutoDisposeFutureProviderElement<ForewordModel>
    with FetchForewordRef {
  _FetchForewordProviderElement(super.provider);

  @override
  bool get forceRefresh => (origin as FetchForewordProvider).forceRefresh;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

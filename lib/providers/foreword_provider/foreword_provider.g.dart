// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreword_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider to fetch the foreword.

@ProviderFor(fetchForeword)
const fetchForewordProvider = FetchForewordFamily._();

/// Provider to fetch the foreword.

final class FetchForewordProvider
    extends
        $FunctionalProvider<
          AsyncValue<ForewordModel>,
          ForewordModel,
          FutureOr<ForewordModel>
        >
    with $FutureModifier<ForewordModel>, $FutureProvider<ForewordModel> {
  /// Provider to fetch the foreword.
  const FetchForewordProvider._({
    required FetchForewordFamily super.from,
    required bool super.argument,
  }) : super(
         retry: null,
         name: r'fetchForewordProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchForewordHash();

  @override
  String toString() {
    return r'fetchForewordProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ForewordModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ForewordModel> create(Ref ref) {
    final argument = this.argument as bool;
    return fetchForeword(ref, forceRefresh: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchForewordProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchForewordHash() => r'b1d52adfeb3cfbbc3cce992438ace33c2bfcc55b';

/// Provider to fetch the foreword.

final class FetchForewordFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ForewordModel>, bool> {
  const FetchForewordFamily._()
    : super(
        retry: null,
        name: r'fetchForewordProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider to fetch the foreword.

  FetchForewordProvider call({bool forceRefresh = false}) =>
      FetchForewordProvider._(argument: forceRefresh, from: this);

  @override
  String toString() => r'fetchForewordProvider';
}

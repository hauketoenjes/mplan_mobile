// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeofday_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getTimeOfDay)
const getTimeOfDayProvider = GetTimeOfDayProvider._();

final class GetTimeOfDayProvider
    extends $FunctionalProvider<TimeOfDayEnum, TimeOfDayEnum, TimeOfDayEnum>
    with $Provider<TimeOfDayEnum> {
  const GetTimeOfDayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTimeOfDayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTimeOfDayHash();

  @$internal
  @override
  $ProviderElement<TimeOfDayEnum> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TimeOfDayEnum create(Ref ref) {
    return getTimeOfDay(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TimeOfDayEnum value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TimeOfDayEnum>(value),
    );
  }
}

String _$getTimeOfDayHash() => r'43c19bd0191b5b22cf595f7ee7446a549c4785da';

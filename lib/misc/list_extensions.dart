extension ListExtensions<T> on List<T> {
  /// Joins [separator] in between the items in [List].
  ///
  /// Does the same as the `List.join()` method but instead of returning a
  /// string, returns the list with separators in between.
  ///
  /// See: https://api.dart.dev/stable/dart-core/Iterable/join.html
  List<T> genericJoin(T separator) {
    final out = <T>[];
    final iterator = this.iterator;

    if (!iterator.moveNext()) return out;

    out.add(iterator.current);
    while (iterator.moveNext()) {
      out
        ..add(separator)
        ..add(iterator.current);
    }
    return out;
  }
}

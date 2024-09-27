extension MapExtension on Map {
  Iterable<T> getIterable<T, E>(T toElement(E e)) {
    var _list = this as Iterable;
    return _list.map((e) => toElement(e));
  }
}

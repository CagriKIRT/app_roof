import 'dart:math';

extension ListExtension<T> on List<T> {
  T getRandom() {
    var randomNumber = Random().nextInt(length - 1);
    return this[randomNumber];
  }

  List<T> removeObjects(bool Function(T element) function) {
    removeWhere(function);
    return this;
  }

  List<T> removeObject(T obje) {
    remove(obje);
    return this;
  }

  List<T> shuffleNewList() {
    var _list = <T>[];

    forEach((element) {
      _list.add(element);
    });

    _list.shuffle();
    return _list;
  }

  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

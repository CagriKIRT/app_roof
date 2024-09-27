import 'package:flutter/widgets.dart';

extension AsyncSnapshotExtension<T> on AsyncSnapshot<T> {
  bool isEmpty() => connectionState == ConnectionState.done && data == null;

}

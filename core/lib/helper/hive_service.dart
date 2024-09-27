import 'package:hive/hive.dart';

abstract class HiveService<T> {
  String get boxName;

  Future<Box<T>> openBox() async {
    return await Hive.openBox<T>(boxName);
  }

  Future<void> put({required T data, required dynamic id}) async {
    final box = await openBox();
    await box.put(id, data);
  }

  Future<List<T>> getList() async {
    final box = await openBox();
    return box.values.toList();
  }

  Future<void> update({required T data, required dynamic id});

  Future<T?> getDataById({required dynamic id}) async {
    final box = await openBox();
    return box.get(id);
  }

  Future<void> delete({required dynamic id}) async {
    final box = await openBox();
    await box.delete(id);
  }

  Future<void> closeBox() async {
    final box = await Hive.openBox<T>(boxName);
    await box.close();
  }

  Future<void> deleteBox() async {
    await Hive.deleteBoxFromDisk(boxName);
  }
}

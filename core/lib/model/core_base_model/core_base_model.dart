import 'package:hive/hive.dart';

abstract class CoreBaseModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  DateTime createdDate;
  @HiveField(2)
  DateTime modifiedDate;
  @HiveField(3)
  String createdBy;
  @HiveField(4)
  String modifiedBy;

  CoreBaseModel({
    required this.id,
    required this.createdDate,
    required this.modifiedDate,
    required this.createdBy,
    required this.modifiedBy,
  });
}

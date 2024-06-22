import 'package:hive/hive.dart';

part 'storage.g.dart';

@HiveType(typeId: 1)
class Storage {
  Storage({
    required this.title,
    required this.note,
  });
  @HiveField(0)
  String title;
  @HiveField(2)
  String note;
}

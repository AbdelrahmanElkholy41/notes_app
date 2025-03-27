import 'package:hive/hive.dart';

part 'NoteModal.g.dart';

@HiveType(typeId: 0)
class NoteModal extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String subtitle;

  @HiveField(2)
  int color;

  @HiveField(3)
  String date;

  NoteModal({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.date,
  });
}

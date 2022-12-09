import 'package:uuid/uuid.dart';

class Notes {
  final String title;
  final String description;
  final String id;

  Notes({
    required this.title,
    required this.description,
  }) : id = const Uuid().v4();
}

import 'package:core/record.dart';

class Character extends Record {
  String? name;

  Character({int? id}) : super(id: id);

  Map<String, dynamic> toMap() {
    return {"id": id, "name": name};
  }
}

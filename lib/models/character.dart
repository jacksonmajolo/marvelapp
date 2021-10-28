import 'package:core/record.dart';

class Character extends Record {
  String? name;

  Character({int? id}) : super(id: id);

  @override
  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    name = json['name'] as String;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
}

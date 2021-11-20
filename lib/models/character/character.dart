import 'package:core/record.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character extends Record {
  String? name;
  String? description;

  Character({int? id}) : super(id: id);

  @override
  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  @override
  Map<String, dynamic> toMap() => _$CharacterToJson(this);
}

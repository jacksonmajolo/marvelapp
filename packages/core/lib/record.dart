abstract class Record {
  int? id;

  Record({this.id});

  Record.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
  }

  Map<String, dynamic> toMap() {
    return {'id': id};
  }

  @override
  String toString() {
    return toMap().toString();
  }
}

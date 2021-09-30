abstract class Record {
  int? id;

  Record({int? id}) {
    this.id = id;
  }

  Map<String, dynamic> toMap();
}

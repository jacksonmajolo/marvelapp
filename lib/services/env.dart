import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class IEnvService {
  Future<void> load({String? file});
  String get(String key);
}

class DotEnvService implements IEnvService {
  @override
  Future<void> load({String? file}) async {
    await dotenv.load(fileName: file ?? "assets/.env");
  }

  @override
  String get(String key) {
    return dotenv.get(key);
  }
}

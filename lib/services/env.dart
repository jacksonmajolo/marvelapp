import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class IEnvService {
  Future<void> load({String? file});
  String get(String key);
}

class DotEnvService implements IEnvService {
  Future<void> load({String? file}) async {
    await dotenv.load(fileName: (file ?? "assets/.env"));
  }

  String get(String key) {
    return dotenv.get(key);
  }
}

class EnvService {
  final IEnvService env;

  EnvService(this.env);

  Future<void> load({String? file}) async {
    this.env.load(file: file);
  }

  String get(String key) {
    return this.env.get(key);
  }
}

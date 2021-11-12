import 'package:get_it/get_it.dart';
import 'package:marvelapp/services/env.dart';
import 'package:marvelapp/services/http.dart';
import 'package:marvelapp/services/session.dart';

class Init {
  static final instance = Init._();
  final getIt = GetIt.instance;

  Init._();

  Future initialize() async {
    getIt.registerLazySingleton<IHttpService>(
      () => HttpService(),
    );

    getIt.registerLazySingleton<ISessionService>(
      () => SharedPreferencesService(),
    );

    getIt.registerLazySingleton<IEnvService>(
      () => DotEnvService(),
    );
  }
}

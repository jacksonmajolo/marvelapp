import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:marvelapp/configs/route.dart';
import 'package:marvelapp/services/session.dart';

class WelcomeController {
  final ISessionService session = GetIt.instance.get<ISessionService>();

  Future<void> initialize() async {
    final bool? logged = await session.get<bool>('logged');
    if (logged != null && logged) {
      // print(logged);
    }
  }

  Future<void> onLoggin(BuildContext context) async {
    session.set('logged', true);
    Navigator.of(context).pushNamedAndRemoveUntil(
      AppRoutes.home,
      (Route<dynamic> route) => false,
    );
  }
}

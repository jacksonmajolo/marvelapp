import 'package:flutter/widgets.dart';
import 'package:marvelapp/configs/route.dart';
import 'package:marvelapp/widgets/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App(
    AppRoutes.home,
    splash: AppRoutes.splash,
  ));
}

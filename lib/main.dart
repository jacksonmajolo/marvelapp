import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:marvelapp/configs/error.dart';
import 'package:marvelapp/configs/route.dart';
import 'package:marvelapp/widgets/app.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (FlutterErrorDetails errorDetails) {
      AppErrorReport.report(
        AppError.flutter,
        error: errorDetails.exception,
        stackTrace: errorDetails.stack,
      );
    };
    runApp(
      const App(
        AppRoutes.welcome,
        splash: AppRoutes.splash,
      ),
    );
  }, (error, stackTrace) {
    AppErrorReport.report(
      AppError.dart,
      error: error,
      stackTrace: stackTrace,
    );
  });
}

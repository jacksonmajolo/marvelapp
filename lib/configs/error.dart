// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:developer';

enum AppError { dart, flutter }

class AppErrorReport {
  static void report(
    AppError appError, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    log('Error on $appError', error: error, stackTrace: stackTrace);
  }
}

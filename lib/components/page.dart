import 'package:flutter/widgets.dart';
import 'package:marvelapp/configs/error.dart';
import 'package:marvelapp/widgets/indicator.dart';
import 'package:marvelapp/widgets/page.dart';

abstract class MarvelPage<T extends StatefulWidget> extends AppPage {
  @override
  Widget buildLoadingWidget(BuildContext context) {
    return Center(
      child: LoadingIndicator(),
    );
  }

  @override
  Widget buildErrorWidget(BuildContext context,
      {Object? error, StackTrace? stackTrace}) {
    AppErrorReport.report(AppError.dart, error: error, stackTrace: stackTrace);
    return const Center(
      child: Text('error'),
    );
  }
}

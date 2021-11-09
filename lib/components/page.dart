import 'package:flutter/widgets.dart';
import 'package:marvelapp/widgets/indicator.dart';
import 'package:marvelapp/widgets/page.dart';

abstract class MarvelPage<T extends StatefulWidget> extends AppPage {
  @override
  Widget buildErrorWidget(BuildContext context, Exception error) {
    return const Center(
      child: Text('error'),
    );
  }

  @override
  Widget buildLoadingWidget(BuildContext context) {
    return Center(
      child: LoadingIndicator(),
    );
  }
}

import 'package:flutter/widgets.dart';

enum PageState { start, loading, sucess, error }

class PageController {
  final state = ValueNotifier<PageState>(PageState.start);
}

abstract class AppPage<T extends StatefulWidget> extends State {
  final PageController pageController = PageController();

  late Object? _error;
  late StackTrace? _stackTrace;

  Future<void> initialize() async {}
  Widget buildLoadingWidget(BuildContext context);
  Widget buildWidget(BuildContext context);
  Widget buildErrorWidget(
    BuildContext context, {
    Object? error,
    StackTrace? stackTrace,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController.state,
      builder: (BuildContext context, Widget? child) {
        switch (pageController.state.value) {
          case PageState.start:
          case PageState.loading:
            return buildLoadingWidget(context);
          case PageState.error:
            return buildErrorWidget(
              context,
              error: _error,
              stackTrace: _stackTrace,
            );
          default:
            return buildWidget(context);
        }
      },
    );
  }

  Future<void> pageBuilder() async {
    pageController.state.value = PageState.loading;
    initialize().then((value) {
      pageController.state.value = PageState.sucess;
    }).onError((Object? error, StackTrace stackTrace) {
      _error = error;
      _stackTrace = stackTrace;

      pageController.state.value = PageState.error;
    });
  }

  @override
  void initState() {
    super.initState();
    pageBuilder();
  }

  @override
  void dispose() {
    pageController.state.dispose();
    super.dispose();
  }
}

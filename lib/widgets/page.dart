import 'package:flutter/widgets.dart';

enum PageState { start, loading, sucess, error }

class PageController {
  final state = ValueNotifier<PageState>(PageState.start);
}

abstract class AppPage<T extends StatefulWidget> extends State {
  final PageController pageController = PageController();

  late Widget? _pageWidget;
  late Exception? _error;

  Future<void> initialize() async {}
  Widget buildWidget(BuildContext context);
  Widget buildErrorWidget(BuildContext context, Exception error);
  Widget buildLoadingWidget(BuildContext context);

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
            return buildErrorWidget(context, _error!);
          default:
            return _pageWidget!;
        }
      },
    );
  }

  Future<void> pageBuilder() async {
    pageController.state.value = PageState.loading;
    initialize().then((value) {
      _pageWidget = buildWidget(context);
      pageController.state.value = PageState.sucess;
    }).onError((Exception error, StackTrace trace) {
      _error = error;
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

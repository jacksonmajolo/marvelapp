import 'package:flutter/widgets.dart';

enum PageState { loading, sucess, error }

class PageController {
  final state = ValueNotifier<PageState>(PageState.loading);
}

abstract class Page extends State {
  final PageController pageController = PageController();

  Widget buildSucessWidget(BuildContext context);
  Widget buildErrorWidget(BuildContext context);
  Widget buildLoadingWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController.state,
      builder: (BuildContext context, Widget? child) {
        switch (pageController.state.value) {
          case PageState.sucess:
            return buildSucessWidget(context);
          case PageState.error:
            return buildErrorWidget(context);
          default:
            return buildLoadingWidget(context);
        }
      },
    );
  }

  @override
  void dispose() {
    pageController.state.dispose();
    super.dispose();
  }
}

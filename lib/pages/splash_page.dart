import 'package:flutter/widgets.dart';
import 'package:marvelapp/widgets/indicator.dart';
import 'package:marvelapp/widgets/platform.dart';
import 'package:marvelapp/widgets/responsive.dart';

class SplashPage extends PlatformWidget {
  @override
  Widget buildWidget(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: _SplashPageMobile(),
    );
  }
}

class _SplashPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingIndicator(),
    );
  }
}

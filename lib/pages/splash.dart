import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvelapp/widgets/indicator.dart';
import 'package:marvelapp/widgets/responsive.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: _SplashPageMobile(),
      ),
    );
  }
}

class _SplashPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: LoadingIndicator());
  }
}

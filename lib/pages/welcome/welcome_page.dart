import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvelapp/widgets/responsive.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: _WelcomePageMobile(),
      ),
    );
  }
}

class _WelcomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvelapp/components/page.dart';
import 'package:marvelapp/pages/welcome/welcome_controller.dart';
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

class _WelcomePageMobile extends StatefulWidget {
  @override
  MarvelPage<_WelcomePageMobile> createState() => _WelcomePageMobileState();
}

class _WelcomePageMobileState extends MarvelPage<_WelcomePageMobile> {
  WelcomeController controller = WelcomeController();

  @override
  Future<void> initialize() async {
    await controller.initialize();
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Container();
  }
}

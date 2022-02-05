import 'package:flutter/material.dart';
import 'package:marvelapp/components/page.dart';
import 'package:marvelapp/pages/welcome/welcome_controller.dart';
import 'package:marvelapp/widgets/platform.dart';
import 'package:marvelapp/widgets/responsive.dart';

class WelcomePage extends PlatformWidget {
  @override
  Widget buildWidget(BuildContext context) {
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('welcome'),
          ElevatedButton(
            child: const Text('home'),
            onPressed: () {
              controller.onLoggin(context);
            },
          ),
        ],
      ),
    );
  }
}

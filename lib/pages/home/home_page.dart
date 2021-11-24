import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/components/page.dart';
import 'package:marvelapp/pages/home/home_controller.dart';
import 'package:marvelapp/widgets/responsive.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
          )
        ],
      ),
      body: ResponsiveLayout(
        mobileLayout: _HomePageMobile(),
      ),
    );
  }
}

class _HomePageMobile extends StatefulWidget {
  @override
  MarvelPage<_HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends MarvelPage<_HomePageMobile> {
  HomeController controller = HomeController();

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
          ElevatedButton(
            child: const Text('Rota'),
            onPressed: () {
              Navigator.pushNamed(context, '/wrong-route');
            },
          ),
        ],
      ),
    );
  }
}

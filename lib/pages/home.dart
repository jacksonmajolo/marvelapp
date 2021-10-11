import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/configs/routes.dart';
import 'package:flutter/material.dart';
import 'package:marvelapp/widgets/responsive.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _actionButton() {
    Navigator.of(context).pushNamed(AppRoutes.not_found, arguments: {1, 2});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
      floatingActionButton: FloatingActionButton(
        onPressed: _actionButton,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      body: ResponsiveLayout(
        mobileLayout: _HomePageMobile(),
        tabletLayout: _HomePageTablet(),
      ),
    );
  }
}

class _HomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Mobile'));
  }
}

class _HomePageTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Tablet'));
  }
}

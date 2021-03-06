import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/widgets/platform.dart';
import 'package:marvelapp/widgets/responsive.dart';

class NotFoundPage extends PlatformWidget {
  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: _NotFoundPageMobile(),
      ),
    );
  }
}

class _NotFoundPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.pageNotFound,
          ),
          ElevatedButton(
            child: Text(AppLocalizations.of(context)!.pageNotFound_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}

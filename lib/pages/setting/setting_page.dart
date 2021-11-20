import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/components/page.dart';
import 'package:marvelapp/pages/setting/setting_controller.dart';
import 'package:marvelapp/widgets/responsive.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingPageTitle),
      ),
      body: ResponsiveLayout(
        mobileLayout: _SettingPageMobile(),
      ),
    );
  }
}

class _SettingPageMobile extends StatefulWidget {
  @override
  MarvelPage<_SettingPageMobile> createState() => _SettingPageMobileState();
}

class _SettingPageMobileState extends MarvelPage<_SettingPageMobile> {
  SettingController controller = SettingController();

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
          Text(controller.themeText(context)),
          Switch(
            value: controller.themeValue(),
            onChanged: (value) {
              controller.onChangeTheme();
            },
          ),
        ],
      ),
    );
  }
}

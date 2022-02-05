import 'dart:io' show Platform;
import 'package:flutter/widgets.dart'
    show Widget, StatelessWidget, BuildContext, Key;

abstract class PlatformWidget extends StatelessWidget {
  const PlatformWidget({Key? key}) : super(key: key);

  Widget buildWidget(BuildContext context) {
    throw UnimplementedError();
  }

  Widget buildCupertinoWidget(BuildContext context) {
    return buildWidget(context);
  }

  Widget buildMaterialWidget(BuildContext context) {
    return buildWidget(context);
  }

  Widget buildWindowsWidget(BuildContext context) {
    return buildWidget(context);
  }

  Widget buildLinuxWidget(BuildContext context) {
    return buildWidget(context);
  }

  Widget buildMacOSWidget(BuildContext context) {
    return buildWidget(context);
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildCupertinoWidget(context);
    } else if (Platform.isAndroid) {
      return buildMaterialWidget(context);
    } else if (Platform.isWindows) {
      return buildWindowsWidget(context);
    } else if (Platform.isLinux) {
      return buildLinuxWidget(context);
    } else if (Platform.isMacOS) {
      return buildMacOSWidget(context);
    }

    return buildWidget(context);
  }
}

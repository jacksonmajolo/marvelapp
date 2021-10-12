import 'dart:io' show Platform;
import 'package:flutter/widgets.dart'
    show Widget, StatelessWidget, BuildContext, Key;

abstract class PlatformWidget<C extends Widget, M extends Widget>
    extends StatelessWidget {
  const PlatformWidget({Key? key}) : super(key: key);

  C buildCupertinoWidget(BuildContext context);
  M buildMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildCupertinoWidget(context);
    }

    return buildMaterialWidget(context);
  }
}

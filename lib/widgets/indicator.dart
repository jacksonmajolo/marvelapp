import 'package:flutter/cupertino.dart' show CupertinoActivityIndicator;
import 'package:flutter/material.dart' show CircularProgressIndicator;
import 'package:flutter/widgets.dart' show Widget, BuildContext;
import 'package:marvelapp/widgets/platform.dart';

class AppLoadingIndicator extends PlatformWidget {
  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return const CupertinoActivityIndicator();
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return const CircularProgressIndicator();
  }
}

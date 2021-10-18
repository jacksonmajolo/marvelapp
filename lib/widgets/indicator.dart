import 'package:flutter/cupertino.dart' show CupertinoActivityIndicator;
import 'package:flutter/material.dart' show CircularProgressIndicator;
import 'package:flutter/widgets.dart' show BuildContext;
import 'package:marvelapp/widgets/platform.dart';

class AppLoadingIndicator extends PlatformWidget {
  @override
  CupertinoActivityIndicator buildCupertinoWidget(BuildContext context) {
    return const CupertinoActivityIndicator();
  }

  @override
  CircularProgressIndicator buildMaterialWidget(BuildContext context) {
    return const CircularProgressIndicator();
  }
}

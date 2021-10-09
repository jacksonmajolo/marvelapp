import 'dart:io';

import 'package:flutter/cupertino.dart' show CupertinoPageScaffold;
import 'package:flutter/material.dart' show Scaffold;
import 'package:flutter/widgets.dart';

class AppScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(child: Container());
    }

    return Scaffold();
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart' show CupertinoActivityIndicator;
import 'package:flutter/material.dart' show CircularProgressIndicator;
import 'package:flutter/widgets.dart'
    show Widget, StatelessWidget, BuildContext, Center;

class AppLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Center(child: CupertinoActivityIndicator());
    }

    return Center(child: CircularProgressIndicator());
  }
}

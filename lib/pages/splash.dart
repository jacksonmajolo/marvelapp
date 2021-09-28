import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvelapp/widgets/progress.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(color: Colors.red, child: LoadingIndicator()));
  }
}

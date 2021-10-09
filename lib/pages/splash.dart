import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvelapp/widgets/indicator.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AppLoadingIndicator());
  }
}

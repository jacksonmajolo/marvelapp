import 'package:flutter/widgets.dart'
    show Widget, StatelessWidget, BuildContext, Key, LayoutBuilder;

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget? tabletLayout;
  final Widget? desktopLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.mobileLayout,
      this.tabletLayout,
      this.desktopLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768.0) {
        return mobileLayout;
      } else if (constraints.maxWidth >= 768.0 &&
          constraints.maxWidth > 1440.0) {
        return tabletLayout ?? mobileLayout;
      } else {
        return desktopLayout ?? (tabletLayout ?? mobileLayout);
      }
    });
  }
}

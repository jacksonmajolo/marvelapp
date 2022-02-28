import 'package:flutter/widgets.dart'
    show Widget, StatelessWidget, BuildContext, Key, LayoutBuilder;

class ResponsiveSizes {
  static const mobile = 768.0;
  static const desktop = 1440.0;
}

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget? tabletLayout;
  final Widget? desktopLayout;

  const ResponsiveLayout({
    Key? key,
    required this.mobileLayout,
    this.tabletLayout,
    this.desktopLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < ResponsiveSizes.mobile) {
          return mobileLayout;
        } else if (constraints.maxWidth >= ResponsiveSizes.mobile &&
            constraints.maxWidth < ResponsiveSizes.desktop) {
          return tabletLayout ?? mobileLayout;
        } else {
          return desktopLayout ?? (tabletLayout ?? mobileLayout);
        }
      },
    );
  }
}

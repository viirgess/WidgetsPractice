import 'package:flutter/material.dart';

enum LogoAspect { backgroundColor, large }

class LogoModel extends InheritedModel<LogoAspect> {
  const LogoModel({
    super.key,
    this.backgroundColor,
    this.large,
    required super.child,
  });

  final Color? backgroundColor;
  final bool? large;

  static Color? backgroundColorOf(BuildContext context) {
    return InheritedModel.inheritFrom<LogoModel>(context,
            aspect: LogoAspect.backgroundColor)
        ?.backgroundColor;
  }

  static bool sizeOf(BuildContext context) {
    return InheritedModel.inheritFrom<LogoModel>(context,
                aspect: LogoAspect.large)
            ?.large ??
        false;
  }

  @override
  bool updateShouldNotify(LogoModel oldWidget) {
    return backgroundColor != oldWidget.backgroundColor ||
        large != oldWidget.large;
  }

  @override
  bool updateShouldNotifyDependent(
      LogoModel oldWidget, Set<LogoAspect> dependencies) {
    if (backgroundColor != oldWidget.backgroundColor &&
        dependencies.contains(LogoAspect.backgroundColor)) {
      return true;
    }
    if (large != oldWidget.large && dependencies.contains(LogoAspect.large)) {
      return true;
    }
    return false;
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool largeLogo = LogoModel.sizeOf(context);

    return AnimatedContainer(
      padding: const EdgeInsets.all(20.0),
      duration: const Duration(seconds: 2),
      curve: Curves.fastLinearToSlowEaseIn,
      alignment: Alignment.center,
      child: FlutterLogo(size: largeLogo ? 200.0 : 100.0),
    );
  }
}

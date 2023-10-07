import 'package:flutter/material.dart';

import 'logo_widget.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Color color = LogoModel.backgroundColorOf(context)!;

    return AnimatedContainer(
      padding: const EdgeInsets.all(12.0),
      color: color,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ColorsSourceApp.milk,
      splashColor: ColorsSourceApp.pink,
      child: const Icon(
        Icons.add,
        color: ColorsSourceApp.brown,
      ),
    );
  }
}

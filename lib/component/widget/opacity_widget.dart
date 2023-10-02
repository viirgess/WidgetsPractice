import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

class OpacityWidget extends StatelessWidget {
  const OpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          color: ColorsSourceApp.pink,
        ),
        Opacity(
          opacity: 0.0,
          child: Container(
            height: 150,
            width: double.infinity,
            color: ColorsSourceApp.yellow,
          ),
        ),
        Container(
          height: 150,
          width: double.infinity,
          color: ColorsSourceApp.blue,
        ),
        Container(
          height: 150,
          width: double.infinity,
          color: ColorsSourceApp.green,
        ),
      ],
    );
  }
}

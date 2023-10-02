import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 20,
      children: [
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.red,
        ),
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.yellow,
        ),
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.blue,
        ),
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.grey,
        ),
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.green,
        ),
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.pink,
        ),
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.brown,
        ),
        Container(
          height: 80,
          width: 80,
          color: ColorsSourceApp.purple,
        ),
      ],
    );
  }
}

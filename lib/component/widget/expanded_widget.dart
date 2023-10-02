import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
        color: ColorsSourceApp.yellow,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 30,
              width: 50,
              color: ColorsSourceApp.blue,
            ),
          ),
          Expanded(
            child: Container(
              color: ColorsSourceApp.grey,
            ),
          ),
          Expanded(
              child:
                  Container(height: 30, width: 50, color: ColorsSourceApp.red)),
        ],
      ),
    );
  }
}

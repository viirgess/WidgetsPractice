import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              width: double.infinity,
              height: 50,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: ColorsSourceApp.milk,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(40.0),
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              color: ColorsSourceApp.purple,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              color: ColorsSourceApp.yellow,
            ),
          ),
        ],
      ),
    );
  }
}

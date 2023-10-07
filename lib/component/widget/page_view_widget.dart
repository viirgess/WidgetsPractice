import 'package:flutter/material.dart';
import 'package:widgets_practice/component/screen/first_screen.dart';
import 'package:widgets_practice/component/screen/second_screen.dart';
import 'package:widgets_practice/component/screen/third_screen.dart';
import 'package:widgets_practice/component/widget/inherited_model_widget.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const [
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
        InheritedModelWidget(),
      ],
    );
  }
}

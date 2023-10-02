import 'package:flutter/material.dart';
import 'package:widgets_practice/component/widget/animated_container.dart';
import 'package:widgets_practice/component/widget/expanded_widget.dart';
import 'package:widgets_practice/component/widget/fade_transition_widget.dart';
import 'package:widgets_practice/component/widget/floating_action_button_widget.dart';
import 'package:widgets_practice/component/widget/future_widget.dart';
import 'package:widgets_practice/component/widget/opacity_widget.dart';
import 'package:widgets_practice/component/widget/page_view_widget.dart';
import 'package:widgets_practice/component/widget/wrap_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade900,
      body: const SafeArea(
        child: PageViewWidget(),
        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       ExpandedWidget(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       WrapWidget(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       AnimatedContainerWidget(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       OpacityWidget(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       FutureWidget(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       FadeTransitionWidget(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       FloatingActionButtonWidget(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

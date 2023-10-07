import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';
import 'package:widgets_practice/component/widget/clip_r_rect_widget.dart';
import 'package:widgets_practice/component/widget/inherited_model_widget.dart';
import 'package:widgets_practice/component/widget/stream_builder_widget.dart';

import 'package:widgets_practice/component/widget/tablet_widget.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade900,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabletWidget(),
              StreamBuilderWidget(),
              ClipRRectWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

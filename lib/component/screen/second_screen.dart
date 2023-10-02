import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';
import 'package:widgets_practice/component/widget/silver_app_bar_widget.dart';
import 'package:widgets_practice/component/widget/tablet_widget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SilverAppBarWidget(), // Add the custom SliverAppBar here
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.pink.shade900,
    );
  }
}

//

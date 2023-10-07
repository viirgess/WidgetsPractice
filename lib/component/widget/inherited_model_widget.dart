import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

import 'backgroung_widget.dart';
import 'logo_widget.dart';

class InheritedModelWidget extends StatefulWidget {
  const InheritedModelWidget({super.key});

  @override
  State<InheritedModelWidget> createState() => _InheritedModelWidgetState();
}

class _InheritedModelWidgetState extends State<InheritedModelWidget> {
  bool large = false;
  Color color = ColorsSourceApp.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade900,
      appBar: AppBar(
        title: const Text('InheritedModel Sample'),
        backgroundColor: ColorsSourceApp.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: LogoModel(
              backgroundColor: color,
              large: large,
              child: const BackgroundWidget(
                child: LogoWidget(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Rebuilt Background',
                        style: TextStyle(color: ColorsSourceApp.blue),
                      ),
                      duration: Duration(milliseconds: 500),
                      backgroundColor: ColorsSourceApp.grey,
                    ),
                  );
                  setState(() {
                    if (color == ColorsSourceApp.blue) {
                      color = ColorsSourceApp.red;
                    } else {
                      color = ColorsSourceApp.blue;
                    }
                  });
                },
                child: const Text('Update background'),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Rebuilt LogoWidget',
                        style: TextStyle(color: ColorsSourceApp.blue),
                      ),
                      duration: Duration(milliseconds: 500),
                      backgroundColor: ColorsSourceApp.purple,
                    ),
                  );
                  setState(() {
                    large = !large;
                  });
                },
                child: const Text('Resize Logo'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

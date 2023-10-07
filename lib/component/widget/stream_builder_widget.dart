import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  final Stream<int> _bids = (() {
    late final StreamController<int> controller;
    controller = StreamController<int>(
      onListen: () async {
        await Future<void>.delayed(const Duration(seconds: 1));
        controller.add(1);
        await Future<void>.delayed(const Duration(seconds: 1));
        await controller.close();
      },
    );
    return controller.stream;
  })();

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.displayMedium!,
      textAlign: TextAlign.center,
      child: Container(
        alignment: FractionalOffset.center,
        color: Colors.transparent,
        child: StreamBuilder<int>(
          stream: _bids,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            List<Widget> children;
            if (snapshot.hasError) {
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: ColorsSourceApp.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Error: ${snapshot.error}'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Stack trace: ${snapshot.stackTrace}',
                    style: const TextStyle(
                        fontSize: 40, color: ColorsSourceApp.pink),
                  ),
                ),
              ];
            } else {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  children = const <Widget>[
                    Icon(
                      Icons.info,
                      color: ColorsSourceApp.blue,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Too',
                        style: TextStyle(
                            fontSize: 40, color: ColorsSourceApp.pink),
                      ),
                    ),
                  ];
                case ConnectionState.waiting:
                  children = const <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Server is loading',
                        style: TextStyle(
                            fontSize: 40, color: ColorsSourceApp.pink),
                      ),
                    ),
                  ];
                case ConnectionState.active:
                  children = <Widget>[
                    const Icon(
                      Icons.check_circle_outline,
                      color: ColorsSourceApp.green,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '\$${snapshot.data}',
                        style: const TextStyle(
                            fontSize: 40, color: ColorsSourceApp.pink),
                      ),
                    ),
                  ];
                case ConnectionState.done:
                  children = <Widget>[
                    const Icon(
                      Icons.check,
                      color: ColorsSourceApp.milk,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '\$${snapshot.data} (Awesome)',
                        style: const TextStyle(
                            fontSize: 40, color: ColorsSourceApp.pink),
                      ),
                    ),
                  ];
              }
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widgets_practice/component/utils/color_source.dart';

class TabletWidget extends StatelessWidget {
  const TabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(80),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(height: 50, width: 50, color: ColorsSourceApp.green),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 82,
                width: 32,
                color: ColorsSourceApp.red,
              ),
            ),
            Container(
              height: 64,
              color: ColorsSourceApp.purple,
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
              height: 150,
              width: 50,
              color: Colors.yellow,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.bottom,
              child: Container(
                height: 82,
                width: 32,
                color: ColorsSourceApp.milk,
              ),
            ),
            Container(
              height: 94,
              color: Colors.brown,
            ),
          ],
        ),
      ],
    );
  }
}

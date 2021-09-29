import 'package:flutter/material.dart';
import 'package:sliding_sheet/src/sheet.dart';

class GridPictures extends StatefulWidget {
  @override
  _GridPicturesState createState() => _GridPicturesState();
}

class _GridPicturesState extends State<GridPictures> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      children: List.generate(30, (index) {
        return Container(
          child: Card(
            color: Colors.amber,
          ),
        );
      }),
    );
  }
}

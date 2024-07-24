import 'package:flutter/material.dart';

class OrientationBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
        );
      },
    );
  }
}

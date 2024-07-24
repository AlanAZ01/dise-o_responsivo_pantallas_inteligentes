import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600.0) {
          return largeWidget();
        } else {
          return smallWidget();
        }
      },
    );
  }

  Widget largeWidget() {
    return SingleChildScrollView(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 6,
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset('assets/large_image.jpg', fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Large Widget Content'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('More Content Here'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget smallWidget() {
    return ListView(
      children: [
        Image.asset(
          'assets/small_image.jpg',
          height: 320,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Small Widget Content'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class PlacesGallery extends StatelessWidget {
  final Function(String, String) onPlaceSelected;

  PlacesGallery({required this.onPlaceSelected});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            onPlaceSelected('Place $index', 'Description of Place $index');
          },
          child: Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/place_$index.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Place $index',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}

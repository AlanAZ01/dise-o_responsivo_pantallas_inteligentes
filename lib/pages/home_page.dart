import 'package:ejemplo_pantallas_inteligentes_1/widgets/place_details.dart';
import 'package:ejemplo_pantallas_inteligentes_1/widgets/places_gallery.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedPlace = 'Place Details';
  String placeDescription =
      'Detailed information about the selected place will be shown here.';

  void updatePlaceDetails(String place, String description) {
    setState(() {
      selectedPlace = place;
      placeDescription = description;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: PlacesGallery(onPlaceSelected: updatePlaceDetails),
          ),
          Expanded(
            flex: 2,
            child: PlaceDetails(
              title: selectedPlace,
              description: placeDescription,
            ),
          ),
        ],
      ),
    );
  }
}

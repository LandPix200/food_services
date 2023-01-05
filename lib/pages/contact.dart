// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';

class ContactPage extends StatelessWidget {
  ContactPage({
    Key? key,
  }) : super(key: key);

  final controller = MapController(
    location: const LatLng(0, 0),
    zoom: 2,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                "Vous avez plusieurs façons de nous contacter",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
              child: Column(
                children: [
                  GFButton(
                    fullWidthButton: true,
                    onPressed: () {},
                    icon: Icon(Icons.email),
                    color: Colors.orange,
                    text: "Email",
                  ),
                  GFButton(
                    fullWidthButton: true,
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    color: Colors.blue,
                    text: "Facebook",
                  ),
                  GFButton(
                    fullWidthButton: true,
                    onPressed: () {},
                    icon: Icon(Icons.whatsapp),
                    color: Colors.green,
                    text: "Whatsapp",
                  ),
                  GFButton(
                    fullWidthButton: true,
                    onPressed: () {},
                    icon: Icon(Icons.video_call),
                    color: Colors.red,
                    text: "Youtube",
                  ),
                  GFButton(
                    fullWidthButton: true,
                    onPressed: () {},
                    icon: Icon(Icons.web_stories),
                    color: Colors.teal,
                    text: "Site internet",
                  ),
                  GFButton(
                    fullWidthButton: true,
                    onPressed: () {},
                    icon: Icon(Icons.phone),
                    color: Colors.purple,
                    text: "Téléphone",
                  ),
                  MapLayout(
                    controller: controller,
                    builder: (context, transformer) {
                      return TileLayer(
                        builder: (context, x, y, z) {
                          final tilesInZoom = pow(2.0, z).floor();

                          while (x < 0) {
                            x += tilesInZoom;
                          }
                          while (y < 0) {
                            y += tilesInZoom;
                          }

                          x %= tilesInZoom;
                          y %= tilesInZoom;

                          //Google Maps
                          final url =
                              'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

                          return Image.network(url);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

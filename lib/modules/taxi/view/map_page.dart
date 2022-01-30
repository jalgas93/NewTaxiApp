import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi/modules/taxi/taxi_widgets/ListScreen.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controllerGoogleMaps = Completer();
    GoogleMapController newGoogleMapController;

//Местоположение
    Position currentPosition;
  var geoLocator = Geolocator();

  void getCurrentPosition() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    var lastPosition = await Geolocator.getLastKnownPosition();

    currentPosition = position;
    print(currentPosition.latitude);
    print(currentPosition.longitude);

    LatLng latLngPosition = LatLng(position.longitude, position.latitude);
    print('LatLngPosition:$latLngPosition');

    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));

    setState(() {
   //   currentPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              padding: EdgeInsets.only( top: 35),
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controllerGoogleMaps.complete(controller);
                newGoogleMapController = controller;
                getCurrentPosition();

              },
              myLocationEnabled: true,
              zoomGesturesEnabled: true,
              zoomControlsEnabled:true,
              myLocationButtonEnabled: true,
              // polylines: //polylineSet,
            ),

            //ListScreen(),



          ],
        ),
      ),
    );
  }
}

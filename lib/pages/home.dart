import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:power_ev/widgets/charger_card.dart';
import 'package:power_ev/widgets/pulsating_gradient.dart';

import 'package:velocity_x/velocity_x.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String city = 'Loading...';
  String state = '..';


  @override
  void initState() {
    super.initState();
    requestLocationPermission();
  }

  requestLocationPermission() async {
    LocationPermission permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied || permission==LocationPermission.deniedForever){
      print("denied");
      LocationPermission ask=await Geolocator.requestPermission();
    }
    else{
      getUserLocation();
      // Position currentposition=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    }
  }

  Future<void> getUserLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print('Location: ${position.latitude}, ${position.longitude}');

      // Call a function to display the city using reverse geocoding
      displayCityFromLocation(position.latitude, position.longitude);
    } catch (e) {
      print('Error getting location: $e');
      setState(() {
        city = 'Error getting location';
      });
    }
  }

  Future<void> displayCityFromLocation(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
      Placemark place = placemarks[0];

      setState(() {
        city = place.locality ?? 'Unknown City';
        state=place.administrativeArea??'';
      });
    } catch (e) {
      print('Error reverse geocoding: $e');
      setState(() {
        city = 'Error reverse geocoding';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body:
        SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right:20,top: 40),
                  child: Text(
                    city,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,fontFamily: 'Anta',letterSpacing: 3,color: context.theme.focusColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right:20,top:0),
                  child: Text(
                    state,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Anta',letterSpacing: 3,color: context.theme.focusColor),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,right:20,top:30),
                  child: Text(
                    "Based on your location these are the available charging stations near you.",
                    style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'FontMain',letterSpacing: 3,
                      color: Color.fromARGB(255, 214, 204, 204),
                    ),
                  ),
                ),

                const SizedBox(height: 30,),

                  Expanded(
                    child: SingleChildScrollView(
                      
                      child:Column(
                        children: [
                          GestureDetector(
                            onTap:  () => {
                                Navigator.pushNamed(
                                  context, '/stationDetails',
                                  arguments: 0,
                                )
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white60,Colors.white10]
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                      // border: Border.all(width: 2,color: Colors.white30),
                                    ),
                                    child: city=="Loading..."? PulsatingGradientContainer():
                            
                                    ChargerCard(
                                      name: "EVCS Charging Station",
                                      image: "assets/images/station-1.jpg",
                                      address: "Action Area I, Newtown, Kolkata",
                                      ports: "10 ports available",
                                    ),
                                  ),           
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap:  () => {
                                Navigator.pushNamed(
                                  context, '/stationDetails',
                                  arguments: 1,
                                )
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white60,Colors.white10]
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                      // border: Border.all(width: 2,color: Colors.white30),
                                    ),
                                    child: city=="Loading..."? PulsatingGradientContainer():
                                    ChargerCard(
                                      name: "NKDA Charging Station",
                                      image: "assets/images/station-2.jpg",
                                      address: "AE Block, New Town, Kolkata",
                                      ports: "4 ports available",
                                    ),
                                  ),           
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap:  () => {
                                Navigator.pushNamed(
                                  context, '/stationDetails',
                                  arguments: 2,
                                )
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white60,Colors.white10]
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                      // border: Border.all(width: 2,color: Colors.white30),
                                    ),
                                    child: city=="Loading..."? PulsatingGradientContainer(): 
                                    ChargerCard(
                                      name: "Tellus power green",
                                      image: "assets/images/station-3.jpg",
                                      address: "Sector II, Bidhannagar, Kolkata",
                                      ports: "6 ports available",
                                    ),
                                  ),           
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap:  () => {
                                Navigator.pushNamed(
                                  context, '/stationDetails',
                                  arguments: 3,
                                )
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white60,Colors.white10]
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                      // border: Border.all(width: 2,color: Colors.white30),
                                    ),
                                    child: city=="Loading..."? PulsatingGradientContainer():
                                    ChargerCard(
                                      name: "EV City India",
                                      image: "assets/images/station-4.jpg",
                                      address: "AB Block, Sector 1, Bidhannagar, Kolkaata",
                                      ports: "5 ports available",
                                    ),
                                  ),           
                              ),
                            ),
                          ),
                          
                    
                          
                        ],
                        )
                    ),
                  ),
                
              ],
            ),
        ),
      
      
    );
  }
}



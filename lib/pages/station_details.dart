import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StationDetails extends StatelessWidget {
  const StationDetails({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300.0, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/station-1.jpg'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'EVCS Charging Station',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Anta',
                    color: context.theme.focusColor
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:3.0),
                      child: Container(
                          height: 15,
                          child: Image.asset("assets/icons/location.png"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Action Area I, Newtown, Kolkata",
                        softWrap: true,
                        style: TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),

              // Stars to show reviews
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0,vertical:10),
                child: Row(
                  children: [
                    Text(
                      "4.5",
                      softWrap: true,
                      style: TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 16),
                    ),
                    const Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_rounded, color: Colors.yellow, size: 18.0),
                          Icon(Icons.star_rounded, color: Colors.yellow, size: 18.0),
                          Icon(Icons.star_rounded, color: Colors.yellow, size: 18.0),
                          Icon(Icons.star_rounded, color: Colors.yellow, size: 18.0),
                          Icon(Icons.star_half_rounded, color: Colors.yellow, size: 18.0),
                        ],
                      ),
                    ),
                    // SizedBox(width: 10,),
                    Text(
                      "(107 reviews)",
                      softWrap: true,
                      style: TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 16),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16,top:20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white10,Colors.white10]
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2,color: context.cardColor),
                      ),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "10 Ports",
                                  style:TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 18),
                                ),
                                Text(
                                  "Available",
                                  style:TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: context.cardColor,
                            thickness: 1.0,
                            indent: 18.0,
                            endIndent: 18.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "200 kW",
                                  style:TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 18),
                                ),
                                Text(
                                  "Chargers",
                                  style:TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: context.cardColor,
                            thickness: 1.0,
                            indent: 18.0,
                            endIndent: 18.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "8 RS",
                                  style:TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 18),
                                ),
                                Text(
                                  "Per kWH",
                                  style:TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ]
                      ),
                    ),           
                ),
              ),
              const SizedBox(height: 10,),

              // Divider(
              //               color: context.cardColor,
              //               thickness: 1.0,
              //               indent: 18.0,
              //               endIndent: 18.0,
              //             ),

              GestureDetector(
                // onTap: () => {
                //       Navigator.pushNamed(context, '/getStarted')
                //   },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20,bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: context.theme.focusColor
                      ),
                      child: Center(child: Text("Get Direction",style: TextStyle(fontFamily: 'FontMain',fontSize: 18,color: context.theme.splashColor),)),
                    ),
                  ),
                ),
              ),

            GestureDetector(
                // onTap: () => {
                //       Navigator.pushNamed(context, '/home')
                //   },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 0,bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: context.theme.splashColor
                      ),
                      child: Center(child: Text("Book Now",style: TextStyle(fontFamily: 'FontMain',fontSize: 18,color: context.theme.focusColor),)),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      );
  
  }
}
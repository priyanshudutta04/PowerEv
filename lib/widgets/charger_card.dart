import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChargerCard extends StatelessWidget {
  final String name;
  ChargerCard({super.key, required this.name});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            // color: context.theme.splashColor,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    child: Image.asset("assets/images/station-1.jpg", fit: BoxFit.cover),
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(width: 10), 
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Text(name,style: TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 18),),
                      SizedBox(height: 5), 
                      Row(
                        children: [
                          Icon(CupertinoIcons.location_circle,color: context.theme.focusColor,),
                          Expanded(
                            child: Text(
                              "Action Area I, Newtown, Kolkata",
                              softWrap: true,
                              style: TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5), 
                      Text("212 reviews",style: TextStyle(fontFamily: 'FontMain',color: context.theme.focusColor,fontSize: 12),),  
                    ],
                  ),
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}
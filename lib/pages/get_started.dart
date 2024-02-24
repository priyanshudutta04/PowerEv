import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';


class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
    floatingActionButton:  Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.cardColor.withOpacity(0.7),
              spreadRadius: 15,
              blurRadius: 20,
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(CupertinoIcons.arrow_right,color: context.theme.focusColor,),
          backgroundColor: context.cardColor,
          shape: CircleBorder(),
        ),
      ),
    ),
        

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/get_started_bg.jpeg"),
            fit: BoxFit.cover
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 40,bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Text(
                    "Power Ev",
                    style: TextStyle(fontSize: 36, color: Colors.white,),
                  ),
                ),      
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 177, 174, 174),),
                  ),
                ),      
              ),
      

            ],
          ),
          
        ),
      ),
    );
  }
}
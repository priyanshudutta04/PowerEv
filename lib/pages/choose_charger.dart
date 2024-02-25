import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChooseCharger extends StatefulWidget {
  const ChooseCharger({super.key});

  @override
  State<ChooseCharger> createState() => _ChooseChargerState();
}

class _ChooseChargerState extends State<ChooseCharger> {
 
    
  int _currentIndex = 1; // Index of the container in the center

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
     backgroundColor: context.canvasColor,
      body: SafeArea(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
          
             Padding(
                padding: const EdgeInsets.only(left: 20,top: 50,bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Text(
                    "Select Charger",
                    style: TextStyle(fontSize: 32, color: Colors.white,fontFamily: 'Anta',letterSpacing: 3),
                  ),
                ),      
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                      fontSize: 14, 
                      color: Color.fromARGB(255, 214, 204, 204),
                      fontFamily: 'FontMain',
                        height: 1.5,
                        wordSpacing: 2.0,
                    ),
                  ),
                ),      
              ),
              const SizedBox(height: 30,),

            Container(
              height: 300,
              child: Center(
                child: PageView.builder(
                  itemCount: 3,
                  controller: PageController(
                    initialPage: _currentIndex,
                    viewportFraction: 0.6,
                  ),
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: _currentIndex == index ? Color.fromRGBO(189, 227, 232, 1):context.theme.splashColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          'Container $index',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            GestureDetector(
                onTap: () => {
                      Navigator.pushNamed(context, '/getStarted')
                  },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 60,bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: context.cardColor
                      ),
                      child: Center(child: Text("Confirm",style: TextStyle(fontFamily: 'FontMain',fontSize: 22,color: context.theme.focusColor),)),
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

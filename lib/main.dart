

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_ev/pages/choose_charger.dart';
import 'package:power_ev/pages/get_started.dart';
import 'package:power_ev/pages/home.dart';
import 'package:power_ev/utils/routes.dart';
import 'package:power_ev/utils/themes.dart';
import 'package:provider/provider.dart';

void main() async{
  
  runApp( MyApp());
}


// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  //const MyApp({super.key});

  bool isSwitched;
  MyApp({Key? key, this.isSwitched=false}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromRGBO(14, 24, 29, 1), // Background color of the navigation bar
      statusBarColor: Color.fromRGBO(14, 24, 29, 1), // Background color of the status bar
    ));
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

    
    return MaterialApp(
      
      themeMode: themeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      
      //themeMode: ThemeMode.system,                       // setting the theme

      debugShowCheckedModeBanner: false,              //removes debug banner

      initialRoute: "/",                              //this route will open first
      
      routes: {                                       //creating routes for different pages in app
        "/": (context) => GetStarted(),                //main root 
        Myroutes.chargerRoute: (context) => ChooseCharger(),
        Myroutes.getStartedRoute: (context) => GetStarted(),
        Myroutes.homeRoute: (context) => HomePage(),
      },
    );   
  }
  );
}


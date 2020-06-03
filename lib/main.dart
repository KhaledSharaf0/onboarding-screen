import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';

import 'second_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //Add Route to the main Page.
      routes: {'/mainPage': (context) => MainPage()},
      title: 'Done',
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Nunito'),
      home: MyHomePage(title: 'Done'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Create a list of PageModel to be set on the onBoarding Screens.
  final pageList = [
    PageModel(
        color: const Color(0xFF678FB4),
        heroAssetPath: 'asstes/logo.png',
        title: Text('Success Road',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text('microfinance system software',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/logo.png'),

    PageModel(
        color: const Color(0xFF678FB4),
        heroAssetPath: 'asstes/logo.png',
        title: Text('Success Road',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text('We carefully verify all banks before adding them into the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/logo.png'),


//
//    PageModel(
//        color: const Color(0xFF65B0B4),
//        heroAssetPath: 'assets/Prlogo.png',
//        title: Text('LOGO',
//            style: TextStyle(
//              fontWeight: FontWeight.w800,
//              color: Colors.white,
//              fontSize: 34.0,
//            )),
//        body: Text(
//            'We carefully verify all banks before adding them into the app',
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              color: Colors.white,
//              fontSize: 18.0,
//            )),
//        iconAssetPath: 'assets/Prlogo.png'
//    ),



//    PageModel(
//      color: const Color(0xFF9B90BC),
//      heroAssetPath: 'assets/stores.png',
//      title: Text('Store',
//          style: TextStyle(
//            fontWeight: FontWeight.w800,
//            color: Colors.white,
//            fontSize: 34.0,
//          )),
//      body: Text('All local stores are categorized for your convenience',
//          textAlign: TextAlign.center,
//          style: TextStyle(
//            color: Colors.white,
//            fontSize: 18.0,
//          )),
//      iconAssetPath: 'assets/shopping_cart.png',
//    ),


    // SVG Pages Example
//    PageModel(
//        color: const Color(0xFF678FB4),
//        heroAssetPath: 'assets/shopping_cart.png',
//        title: Text('Hotels SVG',
//            style: TextStyle(
//              fontWeight: FontWeight.w800,
//              color: Colors.white,
//              fontSize: 34.0,
//            )),
//        body: Text('All hotels and hostels are sorted by hospitality rating',
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              color: Colors.white,
//              fontSize: 18.0,
//            )),
//        iconAssetPath: 'assets/shopping_cart.png',
//        heroAssetColor: Colors.white),


//    PageModel(
//        color: const Color(0xFF65B0B4),
//        heroAssetPath: 'assets/shopping_cart.png',
//        title: Text('Banks SVG',
//            style: TextStyle(
//              fontWeight: FontWeight.w800,
//              color: Colors.white,
//              fontSize: 34.0,
//            )),
//        body: Text(
//            'We carefully verify all banks before adding them into the app',
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              color: Colors.white,
//              fontSize: 18.0,
//            )),
//        iconAssetPath: 'assets/shopping_cart.png',
//        heroAssetColor: Colors.white),


//    PageModel(
//      color: const Color(0xFF9B90BC),
//      heroAssetPath: 'assets/shopping_cart.png',
//      title: Text('Store SVG',
//          style: TextStyle(
//            fontWeight: FontWeight.w800,
//            color: Colors.white,
//            fontSize: 34.0,
//          )),
//      body: Text('All local stores are categorized for your convenience',
//          textAlign: TextAlign.center,
//          style: TextStyle(
//            color: Colors.white,
//            fontSize: 18.0,
//          )),
//      iconAssetPath: 'assets/shopping_cart.png',
//    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Pass pageList and the mainPage route.
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/mainPage'),
        onSkipButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/mainPage'),
      ),
    );
  }
}
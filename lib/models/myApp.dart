import 'package:asadbekdev/models/homePage.dart';
import 'package:asadbekdev/myProjects/carRenting/ProductInfo.dart';
import 'package:asadbekdev/myProjects/carRenting/ProductsList.dart';
import 'package:asadbekdev/myProjects/cart/cartPage.dart';
import 'package:asadbekdev/myProjects/dollar_rate/walletPage.dart';
import 'package:asadbekdev/myProjects/donut/donutPage.dart';
import 'package:asadbekdev/myProjects/educationApp/educationui.dart';
import 'package:asadbekdev/myProjects/hitmusic/hitmusic.dart';
import 'package:asadbekdev/myProjects/loginPage/loginPage.dart';
import 'package:asadbekdev/myProjects/loginPage/userProfilePage.dart';
import 'package:asadbekdev/myProjects/messengerApp/messengerApp.dart';
import 'package:asadbekdev/myProjects/payment_flutterStates/payment.dart';
import 'package:asadbekdev/myProjects/periscope/periscope.dart';
import 'package:asadbekdev/myProjects/shopUI/shop.dart';
import 'package:asadbekdev/myProjects/shopUI/shop2.dart';
import 'package:asadbekdev/myProjects/steppper/stepper.dart';
import 'package:asadbekdev/myProjects/travel/travelPage.dart';
import 'package:asadbekdev/myProjects/walletApp/walletApp.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: "asadbekdev",
      themeMode: ThemeMode.system,
      routes: {
        "/homePage": (context) => HomePage(),
        "/shop": (context) => ShopPage(),
        "/shop2": (context) => ShopPage2(),
        "/hitmusic": (context) => HitMusic(),
        "/carRenting": (context) => ProductsList(),
        "/payment": (context) => Payment(),
        "/donutPage": (context) => DonutPage(),
        "/periscope": (context) => Periscope(),
        "/walletPage": (context) => WalletPage(),
        "/cartPage": (context) => CartPage(),
        "/travelPage": (context) => TravelPage(),
        "/loginPageOrange": (context) => LoginPageOrange(),
        "/userProfilePage": (context) => UserProfilePage(),
        "/educationUI": (context) => EducationUI(),
        "/messengerUI": (context) => MessengeApp(),
        "/walletApp": (context) => WalletApp(),
        "/stepperWidgeti": (context) => StepperWidgeti(),
      },
      initialRoute: "/homePage",
      onGenerateRoute: (stngs) {
        List<String> pathElementlari = stngs.name.toString().split("/");
        if (pathElementlari[1] == "ProductInfo") {
          return MaterialPageRoute(
            settings: RouteSettings(name: stngs.name),
            builder: (context) {
              return ProductInfo(int.parse(pathElementlari[2]));
            },
          );
        }
        return null;
      },
    );
  }
}

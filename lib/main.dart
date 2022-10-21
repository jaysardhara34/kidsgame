import 'package:dots/game/view/Tabbar.dart';
import 'package:dots/game/view/homeScreen.dart';
import 'package:dots/game/view/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => SplashScreen(),
      'main':(context) => Tabbar(),
    },
  ));
}
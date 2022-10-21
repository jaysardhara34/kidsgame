import 'dart:io';

import 'package:dots/game/view/flagScreen.dart';
import 'package:dots/game/view/homeScreen.dart';
import 'package:dots/game/view/seconScreen.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xff5e4538),
        appBar: AppBar(
          elevation: 00,
          backgroundColor: Colors.transparent,
          title: Text(
            "Match The Items",
          ),
          actions: [
            PopupMenuButton(
             color: Color(0xff5e4538),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: () {
                      exit(0);
                    },
                    child: Text(
                      "Close App",
                      style: TextStyle(color: Color(0xffe5e5e5), fontSize: 17),
                    ),
                  ),
                ];
              },
              icon: Icon(Icons.more_vert_rounded),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 2,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            indicatorSize: TabBarIndicatorSize.tab,
            automaticIndicatorColorAdjustment: true,
            labelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            tabs: [
              Tab(text: "Animals"),
              Tab(text: "Fruits"),
              Tab(text: "Country"),
            ],
          ),
        ),
              body: TabBarView(
                children: [
                  HomeScreen(),
                  SecondScreen(),
                  FlagScreen(),
                ],
              ),

        ),

      ),
    );
  }
}

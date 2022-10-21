import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrop = false;
  bool isDropd = false;
  bool isDropc = false;
  bool isDrops = false;
  bool isDropb = false;
  bool isDroph = false;
  bool isDropw = false;
  bool isDropo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5e4538),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'lion',
                      child: isDrop
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/lion.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/lion.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "snake";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDrop = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDrop
                              ? Center(
                                  child: Image.asset(
                                  'assets/dada.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Snake",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'dog',
                      child: isDropd
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/dog.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/dog.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "cat";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDropd = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDropd
                              ? Center(
                                  child: Image.asset(
                                  'assets/cat.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Cat",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'cat',
                      child: isDropc
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/cat.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/cat.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "lion";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDropc = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDropc
                              ? Center(
                                  child: Image.asset(
                                  'assets/lion.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Lion",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'snake',
                      child: isDrops
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/dada.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/dada.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "bear";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDrops = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDrops
                              ? Center(
                                  child: Image.asset(
                                  'assets/bear.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Bear",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'bear',
                      child: isDropb
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/bear.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/bear.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "dog";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDropb = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDropb
                              ? Center(
                                  child: Image.asset(
                                  'assets/dog.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Doggy",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'cow',
                      child: isDropo
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/cow.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/cow.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "horse";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDropo = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDropo
                              ? Center(
                                  child: Image.asset(
                                  'assets/horse.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Horse",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'horse',
                      child: isDroph
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/horse.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/horse.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "wolf";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDroph = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDroph
                              ? Center(
                                  child: Image.asset(
                                  'assets/wolf.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Wolf",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Draggable(
                      onDraggableCanceled: (_, __) {
                        Get.snackbar(duration: Duration(seconds: 1),'Wrong Animal', 'please select right one',
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.info_outline,
                              color: Color(0xffffffff),
                            ));
                      },
                      onDragCompleted: () {
                        Get.snackbar(duration: Duration(seconds: 1),'Correct', "That's the right one",
                            colorText: Color(0xffffffff),
                            icon: Icon(
                              Icons.done,
                              color: Color(0xffffffff),
                            ));
                      },
                      childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'wolf',
                      child: isDropw
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                              'assets/wolf.png',
                              height: 70,
                            ),
                      feedback: Image.asset(
                        'assets/wolf.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == "cow";
                      },
                      onAccept: (data) {
                        setState(() {
                          isDropw = true;
                        });
                      },
                      builder: (context, _, __) {
                        return Container(
                          width: 150,
                          height: 150,
                          child: isDropw
                              ? Center(
                                  child: Image.asset(
                                  'assets/cow.png',
                                  height: 70,
                                ))
                              : Container(
                                  width: 150,
                                  height: 150,
                                  child: Center(
                                      child: Text(
                                    "Cow",
                                    style: TextStyle(
                                        color: Color(0xffe5e5e5), fontSize: 25),
                                  )),
                                ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

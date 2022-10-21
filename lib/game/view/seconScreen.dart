import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'sbr',
                      child: isDrop
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/sbr.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/sbr.png',
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
                        return data == "mango";
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
                                'assets/mango.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Mango",
                                  style: TextStyle(color: Color(0xffe5e5e5),
                                      fontSize: 25),
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'orange',
                      child: isDropd
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/orange.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/orange.png',
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
                        return data == "sbr";
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
                                'assets/sbr.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Strawberry",
                                  style: TextStyle(color: Color(0xffe5e5e5),fontSize: 25),
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'mango',
                      child: isDropc
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/mango.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/mango.png',
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
                        return data == "grapes";
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
                                'assets/grapes.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Grapes",
                                  style: TextStyle(color: Color(0xffe5e5e5),fontSize: 25),
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'grapes',
                      child: isDrops
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/grapes.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/grapes.png',
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
                        return data == "kiwi";
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
                                'assets/kiwi.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Kiwi",
                                  style: TextStyle(color: Color(0xffe5e5e5),fontSize: 25),
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'pineapple',
                      child: isDropb
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/pineapple.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/pineapple.png',
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
                        return data == "orange";
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
                                'assets/orange.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Orange",
                                  style: TextStyle(color: Color(0xffe5e5e5),fontSize: 25),
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'apple',
                      child: isDropo
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/apple.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/apple.png',
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
                        return data == "watermelon";
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
                                'assets/watermelon.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Watermelon",
                                  style: TextStyle(color: Color(0xffe5e5e5),
                                      fontSize: 25),
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'kiwi',
                      child: isDroph
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/kiwi.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/kiwi.png',
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
                        return data == "pineapple";
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
                                'assets/pineapple.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Pineapple",
                                  style: TextStyle(color: Color(0xffe5e5e5),
                                      fontSize: 25),
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Fruit', 'please select right one',
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
                      },childWhenDragging: Container(
                        width: 150,
                        height: 150,
                      ),
                      data: 'watermelon',
                      child: isDropw
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/watermelon.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/watermelon.png',
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
                        return data == "apple";
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
                                'assets/apple.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Apple",
                                  style: TextStyle(color: Color(0xffe5e5e5),
                                      fontSize: 25),
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

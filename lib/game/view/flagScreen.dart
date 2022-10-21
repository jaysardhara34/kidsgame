import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FlagScreen extends StatefulWidget {
  const FlagScreen({Key? key}) : super(key: key);

  @override
  State<FlagScreen> createState() => _FlagScreenState();
}

class _FlagScreenState extends State<FlagScreen> {
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
                    child: Draggable(onDraggableCanceled: (_, __) {
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'india',
                      child: isDrop
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/india.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/india.png',
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
                        return data == "uk";
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
                                'assets/uk.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Ukraine",
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'china',
                      child: isDropd
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/china.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/china.png',
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
                        return data == "ph";
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
                                'assets/ph.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Philippins",
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'ph',
                      child: isDropc
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/ph.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/ph.png',
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
                        return data == "india";
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
                                'assets/india.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "India",
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'uk',
                      child: isDrops
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/uk.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/uk.png',
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
                        return data == "us";
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
                                'assets/us.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "U.S.A",
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'us',
                      child:isDropb
                          ? Image.asset('assets/done.png', height: 60)
                          :  Image.asset(
                        'assets/us.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/us.png',
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
                        return data == "china";
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
                                'assets/china.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "China",
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'th',
                      child: isDropo
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/th.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/th.png',
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
                        return data == "nepal";
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
                                'assets/nepal.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Nepal",
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'nepal',
                      child: isDroph
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/nepal.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/nepal.png',
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
                        return data == "jp";
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
                                'assets/jp.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Japan",
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
                      Get.snackbar(duration: Duration(seconds: 1),'Wrong Country', 'please select right one',
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
                      data: 'jp',
                      child: isDropw
                          ? Image.asset('assets/done.png', height: 60)
                          : Image.asset(
                        'assets/jp.png',
                        height: 70,
                      ),
                      feedback: Image.asset(
                        'assets/jp.png',
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
                        return data == "th";
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
                                'assets/th.png',
                                height: 70,
                              ))
                              : Container(
                            width: 150,
                            height: 150,
                            child: Center(
                                child: Text(
                                  "Thailand",
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

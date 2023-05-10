import 'package:flutter/material.dart';
/*
Widget build(BuildContext context) {
  return Container(
    width: 296,
    height: 800,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(16), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(16), ),
    ),
    child: Stack(
        children:[
            Container(
                width: 296,
                height: 800,
                color: Color(0xff1c1b1f),
                padding: const EdgeInsets.only(bottom: 223, ),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 16, right: 28, top: 16, ),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    SizedBox(
                                        width: double.infinity,
                                        height: 40,
                                        child: Text(
                                            "Dispositivos",
                                            style: TextStyle(
                                                color: Color(0xffcac4d0),
                                                fontSize: 20,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w800,
                                                letterSpacing: 0.50,
                                            ),
                                        ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                        width: double.infinity,
                                        height: 2,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 1,
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        SizedBox(height: 14), ///////////////////////////////////////////
                        Container(
                            width: double.infinity,
                            height: 720,
                            padding: const EdgeInsets.only(left: 2, right: 4, bottom: 40, ),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(28),
                                                        color: Color(0xff4a4458),
                                                    ),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 56,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 56,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "Supporting text",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffcac4d0),
                                                                                                                            fontSize: 14,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Row(
                                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                Container(
                                                                                                                    width: 72,
                                                                                                                    height: 36,
                                                                                                                    child: Row(
                                                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                        children:[
                                                                                                                            Expanded(
                                                                                                                                child: Container(
                                                                                                                                    height: 36,
                                                                                                                                    padding: const EdgeInsets.symmetric(vertical: 4, ),
                                                                                                                                    child: Row(
                                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                        children:[
                                                                                                                                            Expanded(
                                                                                                                                                child: Container(
                                                                                                                                                    height: double.infinity,
                                                                                                                                                    decoration: BoxDecoration(
                                                                                                                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(100), topRight: Radius.circular(0), bottomLeft: Radius.circular(100), bottomRight: Radius.circular(0), ),
                                                                                                                                                        border: Border.all(color: Color(0xff00ccff), width: 1, ),
                                                                                                                                                        color: Color(0xb200ccff),
                                                                                                                                                    ),
                                                                                                                                                    child: Column(
                                                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                                        children:[
                                                                                                                                                            Expanded(
                                                                                                                                                                child: Container(
                                                                                                                                                                    width: double.infinity,
                                                                                                                                                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10, ),
                                                                                                                                                                    child: Row(
                                                                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                                                        children:[
                                                                                                                                                                            Container(
                                                                                                                                                                                width: 18,
                                                                                                                                                                                height: 18,
                                                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                                                                                                ),
                                                                                                                                                                                child: FlutterLogo(size: 18),
                                                                                                                                                                            ),
                                                                                                                                                                        ],
                                                                                                                                                                    ),
                                                                                                                                                                ),
                                                                                                                                                            ),
                                                                                                                                                        ],
                                                                                                                                                    ),
                                                                                                                                                ),
                                                                                                                                            ),
                                                                                                                                        ],
                                                                                                                                    ),
                                                                                                                                ),
                                                                                                                            ),
                                                                                                                            Expanded(
                                                                                                                                child: Container(
                                                                                                                                    height: 36,
                                                                                                                                    padding: const EdgeInsets.symmetric(vertical: 4, ),
                                                                                                                                    child: Row(
                                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                        children:[
                                                                                                                                            Expanded(
                                                                                                                                                child: Container(
                                                                                                                                                    height: double.infinity,
                                                                                                                                                    decoration: BoxDecoration(
                                                                                                                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(100), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(100), ),
                                                                                                                                                        border: Border.all(color: Color(0xff00ccff), width: 1, ),
                                                                                                                                                    ),
                                                                                                                                                    child: Column(
                                                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                                        children:[
                                                                                                                                                            Expanded(
                                                                                                                                                                child: Container(
                                                                                                                                                                    width: double.infinity,
                                                                                                                                                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10, ),
                                                                                                                                                                    child: Row(
                                                                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                                                        children:[
                                                                                                                                                                            Container(
                                                                                                                                                                                width: 18,
                                                                                                                                                                                height: 18,
                                                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                                                                                                ),
                                                                                                                                                                                child: FlutterLogo(size: 18),
                                                                                                                                                                            ),
                                                                                                                                                                        ],
                                                                                                                                                                    ),
                                                                                                                                                                ),
                                                                                                                                                            ),
                                                                                                                                                        ],
                                                                                                                                                    ),
                                                                                                                                                ),
                                                                                                                                            ),
                                                                                                                                        ],
                                                                                                                                    ),
                                                                                                                                ),
                                                                                                                            ),
                                                                                                                        ],
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 56),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                                Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: Color(0xff1c1b1f),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 290,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                ),
                                                                child: Stack(
                                                                    children: [
                                                                        Positioned.fill(
                                                                            child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children:[
                                                                                    Container(
                                                                                        width: 290,
                                                                                        height: 40,
                                                                                        padding: const EdgeInsets.only(left: 16, right: 24, ),
                                                                                        child: Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children:[
                                                                                                Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children:[
                                                                                                        Container(
                                                                                                            width: 24,
                                                                                                            height: 24,
                                                                                                            decoration: BoxDecoration(
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                            ),
                                                                                                            child: FlutterLogo(size: 24),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                                SizedBox(width: 16),
                                                                                                Expanded(
                                                                                                    child: Container(
                                                                                                        height: double.infinity,
                                                                                                        child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children:[
                                                                                                                SizedBox(
                                                                                                                    width: double.infinity,
                                                                                                                    child: Text(
                                                                                                                        "List item",
                                                                                                                        style: TextStyle(
                                                                                                                            color: Color(0xffe6e1e5),
                                                                                                                            fontSize: 16,
                                                                                                                            letterSpacing: 0.50,
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                ),
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ],
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                        Positioned.fill(
                                                                            child: FlutterLogo(size: 40),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            //////////////////////////////////////////////////////
            Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        width: 312,
                        height: 32,
                        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0x001c1b1f), Color(0xff1c1b1f)], ),
                    ),
                ),
            ),
            Positioned(
                left: 250,
                top: 18,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                            BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 3,
                                offset: Offset(0, 1),
                            ),
                            BoxShadow(
                                color: Color(0x4c000000),
                                blurRadius: 2,
                                offset: Offset(0, 1),
                            ),
                        ],
                        color: Color(0xfffb2341),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                        Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: FlutterLogo(size: 24),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ],
    ),
);
}
*/
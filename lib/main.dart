import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'activity_page.dart';
import 'about_us.dart';
import 'registration_page.dart';
import 'ngo_first_page.dart';
import 'ngo_second_page.dart';
import 'mentor_first_page.dart';
import 'mentor_second_page.dart';
import 'donation_page.dart';

//this is in container
//                 width: 250,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(10),
//                 ),

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => MyHomePage(title: 'LearnAid'),
          );
        },
      ),
    );
  }
}

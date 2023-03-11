import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'about_us.dart';
import 'registration_page.dart';
import 'ngo_first_page.dart';
import 'ngo_second_page.dart';
import 'mentor_first_page.dart';
import 'mentor_second_page.dart';
import 'donation_page.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites Page"),
      ),
      body: Center(
        child: Text("This is the Favorites Page"),
      ),
    );
  }
}

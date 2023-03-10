import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'activity_page.dart';
import 'about_us.dart';
import 'registration_page.dart';
import 'ngo_first_page.dart';
import 'ngo_second_page.dart';
import 'mentor_second_page.dart';
import 'donation_page.dart';

class MentorFirstPage extends StatefulWidget {
  const MentorFirstPage({super.key});

  @override
  State<MentorFirstPage> createState() => _MentorFirstPageState();
}

class _MentorFirstPageState extends State<MentorFirstPage> {
  int _selectedValue = 0;
  String _cardNumber = '';
  String _name = '';
  String _age = '';
  String _number = '';
  String _proof = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFA1D2CE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF62A8AC),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            'Mentor Registration',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Alkalami",
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Image.network(
                "https://img.freepik.com/free-vector/teacher-standing-near-blackboard-holding-stick-isolated-flat-vector-illustration-cartoon-woman-character-near-chalkboard-pointing-alphabet_74855-8600.jpg",
                width: 400,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Personal Information",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Alkalami",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.3),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _name = value;
                },
                //textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _age = value;
                },
                //textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter Your Age',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _number = value;
                },
                //textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter Your Phone Number',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Are you a college student?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Alkalami",
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                        value: 0,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = 0;
                          });
                        },
                      ),
                      const Text(
                        "Yes",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Alkalami",
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = 1;
                          });
                        },
                      ),
                      const Text(
                        "No",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Alkalami",
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _cardNumber = value;
                },
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Enter Your Organisation',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                  launch('https://www.youtube.com/');
                },
                child: const Text('Verify Your Aadhar Details Here'),
              ),
            )
            // Container(
            //   margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
            //   padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15),
            //     color: Color.fromARGB(255, 231, 225, 227),
            //   ),
            //   child: TextField(
            //     onChanged: (value) {
            //       // store the value entered in the text field
            //       _proof = value;
            //     },
            //     textAlign: TextAlign.center,
            //     decoration: const InputDecoration(
            //       hintText: 'Provide Google Drive Link',
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 15.0,
          width: 15.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NextMentorPage(),
            ),
          );
        },
        child: const Text('Next'),
      ),
    ));
  }
}

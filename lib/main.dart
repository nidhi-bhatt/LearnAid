import 'package:flutter/material.dart';
import 'dart:async';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(title: "StartPage"),
//     );
//   }
// }

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FirstPage()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/learnaid.png'), fit: BoxFit.cover),
      ),
    );
  }
}

//StartPage

//FirstPageCode
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedValue = 0;
  String _cardNumber = '';
  String _name = '';
  String _age = '';
  String _degree = '';
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
              'NGO Registration',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Alkalami",
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Image.network(
                "https://corpbiz.io/learning/wp-content/uploads/2019/11/NGO-Registration.jpg",
                width: 400,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Name of NGO:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Phone Number:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Email id:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // Container(
            //   padding: EdgeInsets.all(2.0),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(1),
            //     color: Color.fromARGB(255, 231, 225, 227),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       const Text(
            //         "Enter Office Address",
            //         style: TextStyle(
            //             fontSize: 18,
            //             fontWeight: FontWeight.bold,
            //             fontStyle: FontStyle.normal),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(" Office Address Line 1:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Office Address Line 2:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 15.0,
            width: 15.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => NextMentorPage()),
            // );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextNGOPage()),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}

class NextNGOPage extends StatefulWidget {
  const NextNGOPage({super.key});

  @override
  State<NextNGOPage> createState() => _NextNGOPageState();
}

class _NextNGOPageState extends State<NextNGOPage> {
  int _selectedValue = 0;
  String _cardNumber = '';
  String _name = '';
  String _age = '';
  String _degree = '';
  String _proof = '';
  bool _ischecked = false;
  String? _selectedClass;
  final List<String> _section = [
    'Saturday',
    'Sunday',
    'Both',
  ];

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
              'NGO Registration',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Alkalami",
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Image.network(
                "https://corpbiz.io/learning/wp-content/uploads/2019/11/NGO-Registration.jpg",
                width: 400,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Number of students available:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Age group of students:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Select days:',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    value: _selectedClass,
                    items: _section
                        .map(
                          (sec) => DropdownMenuItem<String>(
                            child: Text(sec),
                            value: sec,
                          ),
                        )
                        .toList(),
                    hint: const Text('Select a day'),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedClass = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Tutoring hours:"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(
                          () {
                            _cardNumber = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              title: const Text(
                  'We hereby confirm that we will provide all the resources to conduct the classes in an offline mode.',
                  style: TextStyle(
                    fontFamily: "Alkalami",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              value: _ischecked,
              onChanged: (bool? value) {
                setState(
                  () {
                    _ischecked = value!;
                  },
                );
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 15.0,
            width: 15.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => NextMentorPage()),
            // );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstPage()),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}      

//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Submit and continue'),
//         ),
//       ),
//     );
//   }
// }

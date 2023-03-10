import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

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

//Your Activity Page
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

//About Us

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Us',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact Us'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Here is how you can contact us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    InkWell(
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10),
                          Text(
                            '123-456-7890',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      onTap: () => launch('tel:+1234567890'),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      child: Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(width: 10),
                          Text(
                            'info@example.com',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      onTap: () =>
                          launch('mailto:info@example.com?subject=Contact'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'We did this for GSC.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                              'https://via.placeholder.com/200x200.png?text=Image+1'),
                          SizedBox(height: 10),
                          Text('Image 1'),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                              'https://via.placeholder.com/200x200.png?text=Image+2'),
                          SizedBox(height: 10),
                          Text('Image 2'),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                              'https://via.placeholder.com/200x200.png?text=Image+3'),
                          SizedBox(height: 10),
                          Text('Image 3'),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                              'https://via.placeholder.com/200x200.png?text=Image+4'),
                          SizedBox(height: 10),
                          Text('Image 4'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => RegistrationPage()));
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/learnaidlogo.jpeg'),
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Your activity'),
    Text('About Us'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print("Hello");
    switch (index) {
      case 0:
        // Navigate to Home Page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegistrationPage()),
        );
        break;
      case 1:
        // Navigate to Favorites Page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ActivityPage()),
        );
        break;
      case 2:
        // Navigate to Profile Page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutUs()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration Button',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Registration Page'),
        ),
        body: Container(
          // padding: EdgeInsets.zero,
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20), // Set button padding
                          minimumSize:
                              const Size(150, 50), // Set minimum button size
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Set rounded corner radius
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstPage()),
                          );
                        },
                        child: const Text(
                          'Register as NGO  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Alkalami",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 20), // Set button padding
                          minimumSize: Size(150, 50), // Set minimum button size
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Set rounded corner radius
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MentorFirstPage()),
                          );
                        },
                        child: const Text(
                          'Register as Mentor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Alkalami",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 20), // Set button padding
                          minimumSize: Size(150, 50), // Set minimum button size
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Set rounded corner radius
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonationPage()),
                          );
                        },
                        child: const Text(
                          'Donation Volunteer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Alkalami",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back_ios_outlined),
              label: "Activity",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "About Us",
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          // onTap: (index) {
          //   setState(
          //     () {
          //       navigationIndex = index;
          //     },
          //   );
          // },
        ),
      ),
    );
  }
}

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
                  "https://corpbiz.io/learning/wp-content/uploads/2019/11/NGO-Registration.jpg",
                  width: 400,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
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
                        decoration: const InputDecoration(
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
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
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
                        decoration: const InputDecoration(
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
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Email id:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
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
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(" Office Address Line 1:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
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
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Office Address Line 2:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
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
                  "https://corpbiz.io/learning/wp-content/uploads/2019/11/NGO-Registration.jpg",
                  width: 400,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Number of students available:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
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
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Age group of students:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
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
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
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
                    const SizedBox(height: 10),
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
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 231, 225, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Tutoring hours:"),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: const InputDecoration(
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
              const SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                title: const Text(
                    'We hereby confirm that we will provide all the resources to conduct the classes in an offline mode.',
                    style: TextStyle(
                      color: Colors.white,
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
              MaterialPageRoute(builder: (context) => const RegistrationPage()),
            );
          },
          child: const Text('Submit'),
        ),
      ),
    );
  }
}

//First Page Code Of Mentor
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _name = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _age = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Age',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _number = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Phone Number',
                ),
              ),
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
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _cardNumber = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Enter Aadhar Card Number Or Pan Card Number',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 231, 225, 227),
              ),
              child: TextField(
                onChanged: (value) {
                  // store the value entered in the text field
                  _proof = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Provide Google Drive Link',
                ),
              ),
            ),
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

class NextMentorPage extends StatefulWidget {
  const NextMentorPage({Key? key}) : super(key: key);

  @override
  _NextMentorPageState createState() => _NextMentorPageState();
}

class _NextMentorPageState extends State<NextMentorPage> {
  String? _selectedClass;
  String? _selectedSubject;
  String? _selectedTopic;
  bool _isChecked = false;
  String inputButtonValue = '';

  final List<String> _section = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];

  final List<String> _subjects = [
    'English',
    'Hindi',
    'Maths',
    'Science',
    'SST',
  ];

  final List<String> _topics = [
    'Literature',
    'Grammar',
    'Theory',
    'Practical',
    'Case Study',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA1D2CE),
      appBar: AppBar(
        title: const Text('Mentoring Information'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Class:',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
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
                hint: const Text(
                  'Select a class',
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedClass = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              const Text(
                'Subjects:',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                value: _selectedSubject,
                items: _subjects
                    .map(
                      (subject) => DropdownMenuItem<String>(
                        child: Text(subject),
                        value: subject,
                      ),
                    )
                    .toList(),
                hint: const Text(
                  'Select a subject',
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedSubject = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              const Text(
                'Select your topic:',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                value: _selectedTopic,
                items: _topics
                    .map(
                      (topic) => DropdownMenuItem<String>(
                        child: Text(
                          topic,
                          style: TextStyle(color: Colors.white),
                        ),
                        value: topic,
                      ),
                    )
                    .toList(),
                hint: const Text(
                  'Select a topic',
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (newValue) {
                  setState(
                    () {
                      _selectedTopic = newValue;
                    },
                  );
                },
              ),
              CheckboxListTile(
                title: const Text(
                    'I hereby confirm that I will conduct the classes in an offline mode at the above chosen day, time and venue every week.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Alkalami",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(
                    () {
                      _isChecked = value!;
                    },
                  );
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Store the value when the button is pressed
                    inputButtonValue = 'some value';
                    print('Button pressed with input value: $inputButtonValue');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationPage(),
                      ),
                    );
                  },
                  child: const Text('Submit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//DonationPage

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  List<String> selectedItems = [];

  final List<String> cities = [
    'Delhi',
    'Mumbai',
    'Kolkata',
    'Chennai',
    'Bangalore',
  ];

  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Donate Now!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Image(
                    image: NetworkImage(
                        "https://thumbs.dreamstime.com/b/box-school-office-supplies-sign-bright-blue-background-donation-concept-various-121751259.jpg"),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: selectedItems.contains('books'),
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedItems.add('books');
                                } else {
                                  selectedItems.remove('books');
                                }
                              });
                            },
                          ),
                          Text('Books'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: selectedItems.contains('stationary'),
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedItems.add('stationary');
                                } else {
                                  selectedItems.remove('stationary');
                                }
                              });
                            },
                          ),
                          Text('Stationary'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: selectedItems.contains('funds'),
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedItems.add('funds');
                                } else {
                                  selectedItems.remove('funds');
                                }
                              });
                            },
                          ),
                          Text('Funds'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  DropdownButton(
                    value: selectedCity,
                    hint: Text(
                      'Select Your City',
                      style: TextStyle(color: Colors.black),
                    ),
                    items: cities.map((city) {
                      return DropdownMenuItem(
                        value: city,
                        child: Text(
                          city,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value;
                      });
                    },
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DonationPage()),
                      );
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





















// class DonationPage extends StatefulWidget {
//   @override
//   _DonationPageState createState() => _DonationPageState();
// }

// class _DonationPageState extends State<DonationPage> {
//   List<String> selectedItems = [];

//   final List<String> cities = [
//     'Delhi',
//     'Mumbai',
//     'Kolkata',
//     'Chennai',
//     'Bangalore',
//   ];

//   String? selectedCity;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Donation Page'),
//         centerTitle: true,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/background.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 20.0),
//               child: Text(
//                 'Donate Now!',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20.0,
//                   color: Colors.white,
//                 ),
//               ),
//               padding: EdgeInsets.all(10.0),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//             ),
//             Image(
//               image: NetworkImage(
//                   "https://thumbs.dreamstime.com/b/box-school-office-supplies-sign-bright-blue-background-donation-concept-various-121751259.jpg"),
//             ),
//             SizedBox(height: 20.0),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: selectedItems.contains('books'),
//                       onChanged: (value) {
//                         setState(() {
//                           if (value!) {
//                             selectedItems.add('books');
//                           } else {
//                             selectedItems.remove('books');
//                           }
//                         });
//                       },
//                     ),
//                     Text('Books'),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: selectedItems.contains('stationary'),
//                       onChanged: (value) {
//                         setState(() {
//                           if (value!) {
//                             selectedItems.add('stationary');
//                           } else {
//                             selectedItems.remove('stationary');
//                           }
//                         });
//                       },
//                     ),
//                     Text('Stationary'),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: selectedItems.contains('funds'),
//                       onChanged: (value) {
//                         setState(() {
//                           if (value!) {
//                             selectedItems.add('funds');
//                           } else {
//                             selectedItems.remove('funds');
//                           }
//                         });
//                       },
//                     ),
//                     Text('Funds'),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             DropdownButton(
//               value: selectedCity,
//               hint: Text(
//                 'Select Your City',
//                 style: TextStyle(color: Colors.black),
//               ),
//               items: cities.map((city) {
//                 return DropdownMenuItem(
//                   value: city,
//                   child: Text(
//                     city,
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedCity = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DonationPage()),
//                 );
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

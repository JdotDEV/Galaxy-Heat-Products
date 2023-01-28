import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2312_login_fire/pages/get_quote.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logged in as: " + user.email!,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 36, 108, 168),
                        Color.fromARGB(255, 81, 152, 210),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Get_quote(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Leads",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 36, 108, 168),
                        Color.fromARGB(255, 81, 152, 210),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Get_quote(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Contacts",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 36, 108, 168),
                        Color.fromARGB(255, 81, 152, 210),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Get_quote(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Accounts",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 36, 108, 168),
                        Color.fromARGB(255, 81, 152, 210),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Get_quote(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Deals",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 36, 108, 168),
                        Color.fromARGB(255, 81, 152, 210),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Get_quote(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Tasks",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 36, 108, 168),
                        Color.fromARGB(255, 81, 152, 210),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Get_quote(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Reports",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Center(
                child: Text(
                  "Copyright © 2023 WebNX. All Rights Reserved.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color.fromARGB(145, 0, 0, 0),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

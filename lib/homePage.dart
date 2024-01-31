import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_practice_tutorials/Categori.dart';
import 'package:flutter_practice_tutorials/places.dart';
import 'package:flutter_practice_tutorials/ptv.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFF16967),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: GestureDetector(
            onTap: () {
              // Navigate to the second screen when tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Image.asset(
              'images/Logo.jpg',
              width: 2050.0,
              height: 650.0,
            ),
          ))
        ],
      ),
    );
  }
}

// -------------- SIGN UP PAGE --------------------

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 50),
            child: Text(
              "Get Ready for Travel",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFF323643),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 0),
            child: Text(
              "Welcome to travel get ready",
              style: TextStyle(
                color: Color(0xFF606470),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: Image.asset(
              'images/Vector_Image.png',
              width: 500,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(400, 50),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF3277D8))),
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print("hey");
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(400, 50),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LastPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// -------------- LAST PAGE --------------------

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: const [
          GButton(icon: Icons.home),
          GButton(icon: Icons.explore),
          GButton(icon: Icons.favorite)
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  child: Row(
                    // Start of the first nested Row widget
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Start of the children list for the first Row
                      Container(
                        // Start of the first Container widget
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ), // End of the first Container widget
                      Container(
                        // Start of the second Container widget
                        child: Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ), // End of the second Container widget
                    ], // End of the children list for the first Row
                  ),
                ),
              ),

              // ----------SECTION FOR THEME----------------- //
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  child: Expanded(
                      child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Categori();
                    },
                  )),
                  width: 200,
                  height: 50,
                ),
              ),

              // ----------DETAILS SECTION FOR THEME----------------- //

              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  child: Row(
                    // Start of the first nested Row widget
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Start of the children list for the first Row
                      Container(
                        // Start of the first Container widget
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ), // End of the first Container widget
                      Container(
                        // Start of the second Container widget
                        child: Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ), // End of the second Container widget
                    ], // End of the children list for the first Row
                  ),
                ),
              ),

// ----------DETAILS SECTION  WITH IMAGES AND INFO---------------- //

              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  child: Expanded(
                      child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyPlaces();
                    },
                  )),
                  width: 200,
                  height: 220,
                ),
              ),

              // ----------DISCOUNT INFO---------------- //
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: 493.0,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 158, 155, 155),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 210,
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Get 30% Of Your Next Tour Booking!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          // Start of the fourth Container widgep
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 206, 21, 1),
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the value for border radius
                          ),
                          width: 160.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "JUST GO",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),

// ----------NAVIGATION BAR---------------- //

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Container(
                      child: Image.asset(
                        "images/Navigation.png",
                      ),
                    ),
                  )
                ],
              ),

// ----------PLACES TO VISIT WITH RATING AND LOCATION---------------- //
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return ptv();
                    },
                  ),
                  width: 510,
                  height: 450,
                ),
              ),

              SizedBox(
                height: 20,
              ),
            ],
          ))
        ],
      ),
    );
  }
}

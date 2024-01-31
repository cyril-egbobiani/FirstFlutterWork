import 'package:flutter/material.dart';

class Categori extends StatelessWidget {
  const Categori({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Start of the second nested Row widget

      children: [
        // Start of the children list for the second Row
        Container(
          // Start of the third Container widget

          width: 160.0,
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "Adventure",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        SizedBox(
          width: 5,
        ), // End of the third Container widget
        Container(
          // Start of the fourth Container widget
          width: 160.0,
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),

          child: Center(
            child: Text(
              "Arts & Culture",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          // Start of the fourth Container widget
          width: 160.0,
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "Oceans",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        // End of the fourth Container widget
      ], // End of the children list for the second Row
    );
  }
}

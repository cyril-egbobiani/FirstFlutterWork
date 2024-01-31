import 'package:flutter/material.dart';

class MyPlaces extends StatelessWidget {
  const MyPlaces({super.key});

//NOTE !! THIS SHOWS THE LIST AND PICTURES OF THE REGIONS WITHIN A LIST VIEW
  @override
  Widget build(BuildContext context) {
    return Row(
      // Start of the first nested Row widget
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Start of the children list for the first Row
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Container(),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images/dubai.png",
                      width: 240.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Abu Dabi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Dubai", style: TextStyle(color: Color(0xFFA8B6C8))),
                ],
              ),
            ],
          ),
        ),
        // End of the first Container widget
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "images/thailand.png",
                    width: 240.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Thailand",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
              Row(
                children: [
                  Text("Asla", style: TextStyle(color: Color(0xFFA8B6C8))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ), // End of the first Container widget
        // End of the second Container widget
      ], // End of the children list for the first Row
    );
  }
}

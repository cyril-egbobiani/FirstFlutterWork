import 'package:flutter/material.dart';

class ptv extends StatelessWidget {
  const ptv({super.key});

//NOTE !! "PTV" MEANS "PLACES TO VISIT" , IT IS  A CONTAINER CONTAINING ROWS AND COLUMNS

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
        width: 500.0,
        height: 140.0,
        decoration: BoxDecoration(
          color: Colors.white, // Body color
          borderRadius:
              BorderRadius.circular(20.0), // Border radius for curved edges
          border: Border.all(
            color: Color.fromARGB(255, 248, 244, 244), // Stroke color
            width: 2.0, // Stroke width
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Start of the children list for Row
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "images/hollywood.png",
                width: 200.0,
                height: 180.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              width: 290,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Los Angeles",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$350",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "images/map.png",
                              width: 15,
                              height: 15,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "California",
                              style: TextStyle(color: Color(0xFFA8B6C8)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset("images/rating.png"),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(color: Color(0xFFA8B6C8)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Deserunt aliqua laborum amet aute",
                        style: TextStyle(color: Color(0xFFA8B6C8)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Deserunt aliqua labOR.",
                        style: TextStyle(color: Color(0xFFA8B6C8)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}

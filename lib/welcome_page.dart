// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:to_do/login.dart';
import 'package:to_do/singup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Welcome To Our Community",
          style: TextStyle(
            fontFamily: AutofillHints.addressCity,
            fontWeight: FontWeight.bold,
            fontSize: 35,
            wordSpacing: 2,
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text("Our community is ready to help you"),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(

            //color: const Color.fromARGB(255, 79, 181, 232),
            height: 120,
            width: 120,
            child: Image.asset('image/circle.png')),
        SizedBox(
          height: 8,
        ),
        Text("Get In Through"),
        SizedBox(
          height: 6,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingUp(),
                  ));
            },
            child: Text("SingUp"),
            style: TextButton.styleFrom(
                minimumSize: Size(240, 40), backgroundColor: Colors.orange)),
        SizedBox(
          height: 12,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogIn(),
                  ));
            },
            child: Text("LogIn"),
            style: TextButton.styleFrom(
              minimumSize: Size(240, 40),
            ))
      ]),
    ));
  }
}

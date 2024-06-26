import 'package:flutter/material.dart';
import 'package:to_do/View/Intro Screen/login.dart';
import 'package:to_do/View/Intro Screen/singup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Welcome To Our Community",
          style: TextStyle(
            fontFamily: AutofillHints.addressCity,
            fontWeight: FontWeight.bold,
            fontSize: 35,
            wordSpacing: 2,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          children: [
            Text("Our community is ready to help you"),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        // ignore: sized_box_for_whitespace
        Container(
            height: 120,
            width: 120,
            child: Image.asset('lib/Controller/Assets/image/circle.png')),
        const SizedBox(
          height: 8,
        ),
        const Text("Get In Through"),
        const SizedBox(
          height: 6,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SingUp(),
                  ));
            },
            style: TextButton.styleFrom(
                 minimumSize: const Size(240, 40),
                 backgroundColor: Colors.orange),
            child: const Text("SingUp")
                 ),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogIn(),
                  ));
            },
            style: TextButton.styleFrom(
              minimumSize: const Size(240, 40),
            ),
            child: const Text("LogIn"))
      ]),
    ));
  }
}

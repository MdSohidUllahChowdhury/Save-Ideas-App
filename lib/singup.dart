import 'package:flutter/material.dart';
import 'package:to_do/login.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 35, 179, 184),
          title: const Text(
            "SingUp",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black,
                 fontSize: 15,
                  fontWeight: FontWeight.bold),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, 
          children: [
            const SizedBox(
              height: 4,
            ),
            const Row(
              children: [
                Text(
                  "Welcome To Our Community",
                  style: TextStyle(
                    fontFamily: AutofillHints.addressCity,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    wordSpacing: 3,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Text("Our community is ready to help you"),
              ],
            ),
            const SizedBox(height: 16),
            // ignore: sized_box_for_whitespace
            Container(
              height: 70,
              width: 70,
              child: Image.asset('image/circle.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Frist Name", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Last Name", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "E-Mail", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
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
                  minimumSize: const Size(270, 40),),
                child: const Text("Next"),
                ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already Have An Account?",
                  style: TextStyle(fontSize: 10),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogIn(),
                        ));
                  },
                  child: const Text(
                    "LogIn",
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            )
          ]),
        ));
  }
}

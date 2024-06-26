import 'package:flutter/material.dart';
import 'package:to_do/View/home.dart';
import 'package:to_do/View/Intro Screen/singup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 35, 179, 184),
          title: const Text(
            "LogIn",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(6.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, 
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
                child: Image.asset('lib/Controller/Assets/image/circle.png'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "E-Mail", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Password", border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(285, 40),
                  ),
                  child: const Text("LogIn")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have An Account?",
                    style: TextStyle(fontSize: 10),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingUp(),
                          ));
                    },
                    child: const Text(
                      "SingUp",
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              )
            ]
            )
            )
            );
  }
}

import 'package:flutter/material.dart';
import 'package:to_do/View/home.dart';

class Personality extends StatelessWidget {
  const Personality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        toolbarHeight: 35,
        backgroundColor: const Color.fromARGB(206, 154, 10, 10),
        elevation: 0,
        
        title: const Text('Personality',textAlign: TextAlign.left,
        style: TextStyle(
          
          color: Colors.black,
          fontSize: 18,),
          ),
      ),

    body: Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [const SizedBox(height: 30,),
        Center(
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 60,
            width: 60,
            child: const CircleAvatar(
              backgroundImage: AssetImage('lib/Controller/Assets/image/shakil.jpg'),
            ),
          ),
        ),
        const SizedBox(height:4),
        const Text('Edit Profile',
        style: TextStyle(color: Colors.black),),
        
       Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: const InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ), 
        
        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: const InputDecoration(
                    labelText: "Frist Name",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: const InputDecoration(
                    labelText: "Last Name",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),        
             
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: const InputDecoration(
                    labelText: "E-Mail",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                    labelText: "Password",
                    
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    
                    decoration: const InputDecoration(
                    labelText: "Country",
                    
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),

              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home(),));
                },
                style: TextButton.styleFrom(
                backgroundColor:  const Color.fromARGB(206, 154, 10, 10),
                minimumSize: const Size(270, 40),
                 ),
                
                child:const Text('Save Change',style: TextStyle(color: Colors.black),),
                 )
      ],
    ),

);
}
}
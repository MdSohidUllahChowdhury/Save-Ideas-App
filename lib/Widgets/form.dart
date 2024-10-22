import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  final String nameit;
  final bool? ispassword;
  final bool? isMust;
  
  const FormSection({super.key, 
  
  required this.nameit, 
   this.ispassword, 
   this.isMust});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8
        ),
      
      child: TextFormField(
        
        validator: isMust == true ? (String? value) 
        {
          if(value == null || value.isEmpty){
            return 'Fill Requier Box';
          }else{
            return null;
          }
        }:
        null,
        obscureText: ispassword == true,
        
        decoration:InputDecoration(  
            filled: true,
            fillColor: const Color.fromARGB(192, 235, 224, 224),
            labelText:nameit,
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            
        ),
      ),
    );
  }
}

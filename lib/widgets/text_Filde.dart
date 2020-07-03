

import 'package:flutter/material.dart';

class TextFilade extends StatelessWidget {
  
  Function inputText;
  TextFilade(this.inputText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextField(
          onChanged:(value) =>inputText(value) ,
          cursorColor: Colors.black,
          keyboardType:TextInputType.number  ,
          textAlign: TextAlign.center,
          decoration:InputDecoration(filled: true ,fillColor: Colors.white,
          hintText: "0.0",border: OutlineInputBorder(borderRadius:BorderRadius.circular(30)  )
          )
          

          
        ),
      ),
    );
  }
}
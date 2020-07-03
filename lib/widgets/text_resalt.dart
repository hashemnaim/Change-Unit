

import 'package:flutter/material.dart';

class Resalt extends StatelessWidget {
  String resalt;
  Resalt(this.resalt);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Text(resalt,
        style :TextStyle(color: Colors.orange,fontSize: 50)
          
        ),
      ),
    );
  }
}
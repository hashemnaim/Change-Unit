import 'package:convertunit/widgets/pickerw.dart';
import 'package:convertunit/widgets/text_Filde.dart';
import 'package:flutter/material.dart';


class FirstContiner extends StatelessWidget {
  Function fromePicker;
  Function toPicker;
  Function textInputValue;
  Function caulcalat;
  List<String> listPicker;

  FirstContiner({
    this.fromePicker,
    this.toPicker,
    this.textInputValue,
    this.listPicker,
    this.caulcalat
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
              Color(0xFF1976D2),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 19)]),
      child: Row(
        children: <Widget>[
          Expanded(child: PickerW(fromePicker, listPicker)),
          Expanded(child: TextFilade(textInputValue)),
          Expanded(child: PickerW(toPicker, listPicker)),
        ],
      ),
    );
  }
}

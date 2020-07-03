import 'dart:ffi';

import 'package:convertunit/widgets/text_resalt.dart';

import 'Conteners/button_item.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  String fromPicker = "USD";

  String toPicker = "USD";

  double input = 1;

  String s = 'Currancy';

  String result = "1.0";

  List<String> listPicker ;
  Map<String, dynamic> listPickerValue = currancy_value;

  setFromPicker(int v) {
    this.fromPicker = listPicker[v];
    changeUnit();
  }

  setToPicker(int v) {
    this.toPicker = listPicker[v];
    changeUnit();
  }

  setInputData(String v) {
    this.input = double.parse(v);
    changeUnit();
  }

  setMap(listPicker) {
    switch (listPicker) {
      case 'Currancy':
        listPickerValue = currancy_value;

        break;
      case 'Distance':
        listPickerValue = distance_value;
        break;
      case 'Gig':
        listPickerValue = gig_value;
        break;
      case 'Time':
        listPickerValue = time_value;
        break;
      default:
        listPickerValue = gig_value;
    }
  }

  changeUnit() {
    double res =
        listPickerValue[fromPicker] / listPickerValue[toPicker] * input;
    result = res.toString();

    print(listPicker[2]);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Unit Change"),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Button_Item(
                    fromePicker: setFromPicker,
                    toPicker: setToPicker,
                    textInputValue: setInputData,
                  )),
              Expanded(flex: 1, child: Resalt(result))
            ],
          ),
        ));
  }
}

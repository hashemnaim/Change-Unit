import 'package:convertunit/Conteners/first_contener.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Button_Item extends StatefulWidget {
  Function fromePicker;
  Function toPicker;
  Function textInputValue;
  List<String> listPicker;
  Map<String, dynamic> listPickerValue;
  
  Function caulcalat;

  Button_Item(
      {this.fromePicker,
      this.toPicker,
      this.textInputValue,
      this.listPicker,
      this.caulcalat,this.listPickerValue});

  @override
  _Button_ItemState createState() => _Button_ItemState(this.fromePicker,
      this.toPicker, this.textInputValue, this.listPicker, this.caulcalat,this.listPickerValue);
}

class _Button_ItemState extends State<Button_Item>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  Function fromePicker;
  Function toPicker;
  Function textInputValue;
  Function caulcalat;
  List<String> listPicker;
  Map<String, dynamic> listPickerValue;
  String s;
  _Button_ItemState(this.fromePicker, this.toPicker, this.textInputValue,
      this.listPicker, this.caulcalat,this.listPickerValue);

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: button_name.length, vsync: this);
  }

  List<String> setList(s) {
    switch (s) {
      case 'Currancy':
        listPicker = currancy;

        break;
      case 'Distance':
        listPicker = distance;
        break;
      case 'Gig':
        listPicker = gig;
        break;
      case 'Time':
        listPicker = time;
        break;
      default:
        listPicker = gig;
    }

    return listPicker;
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Expanded(
          flex: 2,
          child: Container(
            child: TabBarView(
                controller: tabController,
                children: button_name
                    .map(
                      (e) => FirstContiner(
                          fromePicker: fromePicker,
                          textInputValue: textInputValue,
                          toPicker: toPicker,
                          listPicker: setList(e)),
                    )
                    .toList()),
          )),
      Expanded(
          flex: 1,
          child: Container(
              padding: EdgeInsets.only(left: 5),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 100,
                  children: button_name
                      .map(
                        (e) => Container(
                          padding: EdgeInsets.only(left: 6),
                          child: RaisedButton(
                            shape: CircleBorder(side: BorderSide(width: 0.1)),
                            onPressed: () {
                              print(e);
                              count = button_name.indexOf(e);

                              tabController.animateTo(button_name.indexOf(e));
                              
                              setState(() {});
                            },
                            color: count == button_name.indexOf(e)
                                ? Colors.blue[300]
                                : Colors.blue[50],
                            child: Text(e),
                          ),
                        ),
                      )
                      .toList())))
    ]));
  }
}

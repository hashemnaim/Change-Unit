import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PickerW extends StatelessWidget {
  Function selctedPicker;
  List<String> listPicker;
  PickerW(this.selctedPicker,this.listPicker);
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
        itemExtent: 40,
        onSelectedItemChanged: (value) => selctedPicker(value),
        children: listPicker.map((e) => Text(e)).toList());
  }
}

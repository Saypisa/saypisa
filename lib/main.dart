import 'package:flutter/material.dart';


import 'MyBuilder.dart';

void main(List<String> args) {
  runApp(Saypisa());
}

class Saypisa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ນິເປັນຄຳສັ່ງປິດ ດີບັກ ແດງໆ ອອກ
      title: 'SAYPISA',
      home: MyBuilder(),
    );
  }
}
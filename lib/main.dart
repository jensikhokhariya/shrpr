import 'package:flutter/material.dart';
import 'package:shrpr/screen/page1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Page_1(),
      },
    ),
  );
}

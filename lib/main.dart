import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gst/homePage.dart';

void main()
{
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,routes: {
      '/':(context)=>GST(),
    },)
  );
}
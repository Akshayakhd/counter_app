import 'package:counter_app/countcontroller.dart';
import 'package:counter_app/counter.dart';
import 'package:counter_app/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ChangeNotifierProvider(create: (context)=>Countcontroller(),child: Counter(),),));
}

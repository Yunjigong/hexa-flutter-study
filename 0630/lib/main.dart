import 'package:flutter/material.dart';
import 'package:builder/ScreenA.dart';
import 'package:builder/ScreenB.dart';
import 'package:builder/ScreenC.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'navigator',
      initialRoute: '/',
      routes: {
        '/':(context) => ScreenA(),
        '/b' : (content) => ScreenB(),
        '/c' : (content) => ScreenC(),
      },
    );
  }
}
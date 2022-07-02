import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Builder',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
          Scaffold.of(context)
            .showSnackBar(SnackBar(
              content: Text('Hellow',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white
              ),
              ),
              backgroundColor: Colors.deepPurple,
              duration: Duration(milliseconds: 1000),
            ),
            );
        }),
    );
  }
}
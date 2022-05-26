import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon:Icon(Icons.menu), 
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        actions: <Widget>[
          IconButton(
          icon:Icon(Icons.shopping_cart), 
          onPressed: () {
            print('Shopping cart is clicked');
          },
        ),
        IconButton(
          icon:Icon(Icons.search), 
          onPressed: () {
            print('Search is clicked');
          },
        ),
        ],
      ),
    );
  }
}
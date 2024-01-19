import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
              child: Text('Dice',)),
        ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
            onPressed: (){
              setState((){
                leftdicenumber = Random().nextInt(6)+1;
                rightdicenumber = Random().nextInt(6)+1;
              });
            },
              child: Image.asset('images/$leftdicenumber.png'),)),
            Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState((){
                      leftdicenumber = Random().nextInt(6)+1;
                      rightdicenumber = Random().nextInt(6)+1;
                    });

                  },
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image.asset('images/$rightdicenumber.png')),)),
          ],
        ),
      ),),

    );
  }
}

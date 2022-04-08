import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_lab8_final/ColorProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ColorProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage2(),
      ),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  final String title = 'Flutter Demo Home Page';
  void changeColor(bool value) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Provider.of<ColorProvider>(context).mainColor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Provider.of<ColorProvider>(context).mainColor,
            ),
            Switch(
              onChanged: (bool value) {
                Provider.of<ColorProvider>(context, listen: false).toggle();
              },
              value: Provider.of<ColorProvider>(context).isSwitched,
              activeColor: Colors.blue,
              activeTrackColor: Colors.lightBlueAccent,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.black12,
            )
          ],
        ),
      ),
    );
  }
}
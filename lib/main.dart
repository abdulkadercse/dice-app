import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumer=5;
  int rightDiceNumber=6;
  void diceChangeFace() {
    setState(() {
      leftDiceNumer=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Dice App", style:TextStyle(
          fontSize: 25,
          letterSpacing: 3,
          fontWeight: FontWeight.w600,
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    diceChangeFace();
                  },
                  child: Image(
                      image: AssetImage("images/dice$leftDiceNumer.png")
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    diceChangeFace();
                  },
                  child: Image(
                      image: AssetImage("images/dice$rightDiceNumber.png")
                  ),
                ),
              ),


            ]
        ),
      ),
    );
  }
}
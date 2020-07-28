import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage dimage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage=one;
      dimage=one;
    });
  }
  void rolldice() {
    int rand = (Random().nextInt(6) + 1);
    AssetImage newimage;
    switch (rand) {
      case 1:
        newimage = one;
        break;
      case 2:
        newimage = two;
        break;
      case 3:
        newimage = three;
        break;
      case 4:
        newimage = four;
        break;
      case 5:
        newimage = five;
        break;
      case 6:
        newimage = six;
        break;
    }
    setState(() {
      diceimage = newimage;
    });
  }
  void rolldice2() {
    int rand = (Random().nextInt(6) + 1);
    AssetImage anotherimage;
    switch (rand) {
      case 1:
        anotherimage = one;
        break;
      case 2:
        anotherimage = two;
        break;
      case 3:
        anotherimage = three;
        break;
      case 4:
        anotherimage = four;
        break;
      case 5:
        anotherimage = five;
        break;
      case 6:
        anotherimage = six;
        break;
    }
    setState(() {
      dimage = anotherimage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Roll the dice!!'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: dimage,
                        width: 100.0,
                        height: 100.0,
                      ),
                      SizedBox(
                        width: 25.0,
                        height: 100.0,
                      ),
                      Image(
                        image: diceimage,
                        width: 100.0,
                        height: 100.0,
                      ),
                    ],
                  ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 200.0,
                  height:60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.redAccent,
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                    child: Text('ROLL'),
                    onPressed:()=> [rolldice(), rolldice2()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
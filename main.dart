import 'package:flutter/material.dart';

void main() {
  runApp(MyAppx());
}

class MyAppx extends StatefulWidget {
  @override
  State<MyAppx> createState() => _MyAppStatexa();
}

class _MyAppStatexa extends State<MyAppx> {
  List<int> sayiver = [0, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text('Random Key '),
        ),
        backgroundColor: Colors.lime,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text(
                      sayiver.elementAt(0).toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    child: Text(
                      sayiver.elementAt(1).toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text(
                      sayiver.elementAt(2).toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    color: Colors.greenAccent,
                    child: Text(
                      sayiver.elementAt(3).toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      sayiver.elementAt(4).toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(40, 40)),
                onPressed: () {
                  rakamiver();
                },
                child: Text(
                  'Random Ps',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void rakamiver() {
    setState(() {
      sayiver.shuffle();
    });
  }
}

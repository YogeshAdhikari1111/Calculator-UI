import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 23),
        ),
        leading: const Icon(Icons.calculate),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.only(right: 14),
                child: Text(
                  '8x7',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 214, 188, 92),
                  ),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  '56',
                  style: TextStyle(fontSize: 40, color: Colors.amberAccent),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              children: [
                getButton('AC'),
                getButton('C'),
                getOperator('<'),
                getOperator('/'),
              ],
            ),
            Row(
              children: [
                getButton('7'),
                getButton('8'),
                getButton('9'),
                getOperator('x'),
              ],
            ),
            Row(
              children: [
                getButton('4'),
                getButton('5'),
                getButton('6'),
                getOperator('-'),
              ],
            ),
            Row(
              children: [
                getButton('1'),
                getButton('2'),
                getButton('3'),
                getOperator('+'),
              ],
            ),
            Row(
              children: [
                getButton('00'),
                getButton('0'),
                getButton('.'),
                getOperator('='),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getButton(String text) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 18.0),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          minimumSize: const Size(90, 50),
        ),
      ),
    );
  }

  Widget getOperator(String text) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.amberAccent, fontSize: 22),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 120, 157, 176),
          minimumSize: const Size(90, 50),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
void main() => runApp( Calculator());

class Calculator extends StatelessWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SimpleCalculator(),
      
      
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({ Key? key }) : super(key: key);

  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(
        children: <Widget> [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: const Text(
              '0',
              style: TextStyle(
                fontSize: 38.0,
              ),
            ),
          ),
           Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: const Text(
              '0',
              style: TextStyle(
                fontSize: 48.0,
              ),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Container(
              
                    
             )
            ],
          )

        ],
      ),
      
    );
  }
}
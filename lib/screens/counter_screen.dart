import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int contador = 0;

  @override
  Widget build(BuildContext context) {

    const fontSize25 = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ContadorScreen AppBar')),
        elevation: 5,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Click Counter:", style: fontSize25),
              Text('$contador', style: fontSize25)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one_outlined) ,
          onPressed: () { 
            contador++;
            setState(() {
              
            });
          },
        ),
    );
  }
}
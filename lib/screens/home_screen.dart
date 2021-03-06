import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize25 = TextStyle(fontSize: 25);
    int contador = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen AppBar')),
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
            print('Hola: $contador');
            contador++;
          },
        ),
    );
  }

}
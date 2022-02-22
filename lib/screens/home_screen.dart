import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize25 = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen AppBar')),
        elevation: 5,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("Click Counter:", style: fontSize25),
              Text('10', style: fontSize25)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one_outlined) ,
          onPressed: () { 

          },
        ),
    );
  }

}
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int contador = 0;

  void increase() {
    contador++;
    setState(() {});
  }

  void decrease() {
    contador--;
    setState(() {});
  }

  void restar() {
    contador=0;
    setState(() {});
  }

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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomFloatingActions(
          increaseFunction: increase,
          decreaseFunction: decrease,
          restart: restar,
        ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFunction, 
  decreaseFunction, 
  restart;
  const CustomFloatingActions({
    Key? key, 
    required this.increaseFunction, 
    required this.decreaseFunction, 
    required this.restart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined) ,
         onPressed: () => decreaseFunction(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt_outlined) ,
          onPressed: () => restart(),
        ),
      
        FloatingActionButton(
          child: const Icon(Icons.plus_one_outlined) ,
        onPressed: () => increaseFunction(),
        ),
      ],
    );
  }
}
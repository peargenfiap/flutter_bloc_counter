import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final int counter;
  final VoidCallback onIncrementPressed;
  final VoidCallback onDecrementPressed;
  final VoidCallback onGenerateRandomPressed;
  final VoidCallback onResetPressed;

  const MyHomePage(
      {super.key,
      required this.title,
      required this.counter,
      required this.onIncrementPressed,
      required this.onDecrementPressed,
      required this.onGenerateRandomPressed,
      required this.onResetPressed});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Você já apertou o botão essa quantidade:',
              ),
              Text(
                '${widget.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              FloatingActionButton(
                onPressed: widget.onIncrementPressed,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                height: 8,
              ),
              FloatingActionButton(
                onPressed: widget.onDecrementPressed,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                height: 8,
              ),
              FloatingActionButton(
                onPressed: widget.onGenerateRandomPressed,
                tooltip: 'RandomValue',
                child: const Icon(Icons.repeat_one_sharp),
              ),
              const SizedBox(
                height: 8,
              ),
              FloatingActionButton(
                onPressed: widget.onResetPressed,
                tooltip: 'RandomValue',
                child: const Icon(Icons.exposure_zero_outlined),
              ),
            ],
          ),
        ));
  }
}

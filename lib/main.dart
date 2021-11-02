import 'package:custom_stepper/custom_steppter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final GlobalKey<StepperCustomState> _myWidgetState =
      GlobalKey<StepperCustomState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("stepper"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            StepperCustom(key: _myWidgetState),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      _myWidgetState.currentState?.onStepReturn();
                    },
                    child: Text('back')),
                const SizedBox(
                  width: 29,
                ),
                ElevatedButton(
                    onPressed: () {
                      _myWidgetState.currentState?.onStepContinue();
                    },
                    child: Text('next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

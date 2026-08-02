import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

  bool inputA = false;
  bool inputB = false;
  bool output = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogicGateScreen(),
    );
  }
}

// 1. THE INTERACTIVE SCREEN
class LogicGateScreen extends StatefulWidget {
  const LogicGateScreen({super.key});

  @override
  State<LogicGateScreen> createState() => _LogicGateScreenState();
}

class _LogicGateScreenState extends State<LogicGateScreen> {
  // 2. THE BRAIN (State Variables)



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 1: AND Gate'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Toggle inputs to control the circuit:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // BUTTON FOR INPUT A
            ElevatedButton(
              onPressed: () {
                setState(() {
                  inputA = !inputA;
                  checkOutput();
                });
              },

              child: Text('Input A: ${inputA ? "ON (true)" : "OFF (false)"}'),
            ),

            const SizedBox(height: 15),

            // BUTTON FOR INPUT B
            ElevatedButton(
              onPressed: () {
                setState(() {
                  inputB = !inputB; // Flips true to false, or false to true
                  checkOutput();
                });
              },
              child: Text('Input B: ${inputB ? "ON (true)" : "OFF (false)"}'),
            ),

            const SizedBox(height: 15),

            Text('${output ? "LIT" : "OFF."}'),
          ],
        ),
      ),
    );
  }
}

void checkOutput(){

  if(inputA && inputB){
    output = true;
  }else{
    output = false;
  }
}


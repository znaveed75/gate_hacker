import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: const Text('GateHacker'),
     backgroundColor: Colors.indigo,
   ),
   body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         const Text(
           'Select a Level',
           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
         ),
         const SizedBox(height: 30),

         // LEVEL 1 BUTTON
         ElevatedButton(
           onPressed: () {
             // YOUR NAVIGATOR CODE GOES HERE
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const LogicGateScreen()),
             );
           },
           child: const Text('Level 1: AND Gate - click here to go to Level 1'),
         ),

        const SizedBox(height: 15),

         ElevatedButton(
           onPressed: () {
             // YOUR NAVIGATOR CODE GOES HERE
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const LogicGateScreen2()),
             );
           },
           child: const Text('Level 2: NAND Gate - click here to go to Level 2'),
         ),
       ],
     ),
   ),
 );
}
}


class LogicGateScreen extends StatefulWidget {
  const LogicGateScreen({super.key});

  @override
  State<LogicGateScreen> createState() => _LogicGateScreenState();
}

class _LogicGateScreenState extends State<LogicGateScreen> {

  bool inputA = false;
  bool inputB = false;
  bool output = false;

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

  void checkOutput(){

  if(inputA && inputB){
    output = true;
  }else{
    output = false;
  }
}

}





class LogicGateScreen2 extends StatefulWidget {
  const LogicGateScreen2({super.key});

  @override
  State<LogicGateScreen2> createState() => _LogicGateScreen2State();
}

class _LogicGateScreen2State extends State<LogicGateScreen2> {

  bool inputA = false;
  bool inputB = false;
  bool output = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 2: NAND Gate'),
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

  void checkOutput(){

  if(inputA && inputB){
    output = false;
  }else{
    output = true;
  }
}

}
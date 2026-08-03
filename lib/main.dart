import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
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

         const SizedBox(height: 15),

         ElevatedButton(
           onPressed: () {
             // YOUR NAVIGATOR CODE GOES HERE
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const LogicGateScreen3()),
             );
           },
           child: const Text('Level 3: Three Inputs'),
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

            Text(output ? "LIT" : "OFF."),
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

  bool inputA = true;
  bool inputB = true;
  bool output = false;

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

            Text(output ? "LIT" : "OFF."),
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


class LogicGateScreen3 extends StatefulWidget {
  const LogicGateScreen3({super.key});

  @override
  State<LogicGateScreen3> createState() => _LogicGateScreen3State();
}

class _LogicGateScreen3State extends State<LogicGateScreen3> {

  bool inputA = false;
  bool inputB = false;
  bool inputC = false;
  bool output = false;
  List<String> logicgates = ["","AND", "OR"];
  int indexselection1 = 0;
  int indexselection2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 3: NAND Gate'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Which Logic Gate would allow either A or B to be on, while C must be on? Toggle the Logic gate and then the inputs.',
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
            
             ElevatedButton(
              onPressed: () {
                setState(() {
                  indexselection1++;
                  checkIndexSelection();
                  checkOutput();
                });
              },

              child: Text(logicgates[indexselection1]),
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
            
            ElevatedButton(
              onPressed: () {
                setState(() {
                  indexselection2++;
                  checkIndexSelection();
                  checkOutput();
                });
              },

              child: Text(logicgates[indexselection2]),
            ),

            // BUTTON FOR INPUT C
            ElevatedButton(
              onPressed: () {
                setState(() {
                  inputC = !inputC; // Flips true to false, or false to true
                  checkOutput();
                });
              },
              child: Text('Input C: ${inputC ? "ON (true)" : "OFF (false)"}'),
            ),

            const SizedBox(height: 15),

            Text(output ? "LIT" : "OFF."),
          ],
        ),
      ),
    );
  }

  void checkOutput(){
    if((inputA || inputB) && inputC){
      if(indexselection1==2 && indexselection2==1){
         output = true;
      }
    }else{
      output = false;
    }
}


void checkIndexSelection(){
  if(indexselection1==logicgates.length){
    indexselection1 = 0;
  }
  if(indexselection2==logicgates.length){
    indexselection2 = 0;
  }
}

}
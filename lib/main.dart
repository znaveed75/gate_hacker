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


        ElevatedButton(
           onPressed: () {
             // YOUR NAVIGATOR CODE GOES HERE
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Tutorial1Screen()),
             );
           },
           child: const Text('Tutorial 1: Basic Logic Gates'),
         ),

        const SizedBox(height: 15),

         // LEVEL 1 BUTTON
         ElevatedButton(
           onPressed: () {
             // YOUR NAVIGATOR CODE GOES HERE
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const LogicGateScreen()),
             );
           },
           child: const Text('Level 1: AND Gate'),
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


          const SizedBox(height: 15),

         ElevatedButton(
           onPressed: () {
             // YOUR NAVIGATOR CODE GOES HERE
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Tutorial2Screen()),
             );
           },
           child: const Text('Tutorial 2: SOP & Truth Tables'),
         ),
       ],
     ),
   ),
 );
}
}


class Tutorial1Screen extends StatefulWidget {
  const Tutorial1Screen({super.key});

  @override
  State<Tutorial1Screen> createState() => _Tutorial1ScreenState();
}

class _Tutorial1ScreenState extends State<Tutorial1Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial 1'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              'This is going to be a basic tutorial for the first three levels.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            const Text(
              'A logic gate takes one or more binary inputs and produces a single binary output based on a specific logical operation.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 25),

            const Text(
              'Lets start with the first gate: the AND gate. the AND gate requires both inputs to be HIGH (1) in order for the output to be HIGH (1).',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 5),

            const Text(
              'Put it in Simple English: "input D AND input F must both be HIGH (1) for the output to be HIGH (1)."',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 5),

            const Text(
              'There might be levels where I say both must be HIGH, so that automatically implies that there is going to be an AND gate in the circuit without me having to use the word AND.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),


            // const Text(
            //   'Lets start with the first gate: the AND gate. the AND gate requires both inputs to be HIGH (1) in order for the output to be HIGH (1). Put it in Simple English: "input D AND input F must both be HIGH (1) for the output to be HIGH (1)." There might be levels where I say both must be HIGH, so that automatically implies that there is going to be an AND gate in the circuit without me having to use the word AND.',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            // ),

            const SizedBox(height: 35),

            // const Text(
            //   'Next basic gate were going to cover is the OR gate. This one requires at least one of two inputs to be HIGH (1) in order for the output to be HIGH (1) input V OR input W must be HIGH (1), or your probably used to hearing either V or W must be on which automatically implies at least one of them need to be HIGH.',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            // ),

            const Text(
              'Next basic gate were going to cover is the OR gate. This one requires at least one of two inputs to be HIGH (1)',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 5),

            const Text(
              'in order for the output to be HIGH (1) input V OR input W must be HIGH (1),',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),


            const SizedBox(height: 5),

            const Text(
              'or your probably used to hearing either V or W must be on which automatically implies at least one of them need to be HIGH.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),


            const SizedBox(height: 35),

            const Text(
              'Go ahead and try levels 1-3 as a warm up!',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}


class Tutorial2Screen extends StatefulWidget {
  const Tutorial2Screen({super.key});

  @override
  State<Tutorial2Screen> createState() => _Tutorial2ScreenState();
}

class _Tutorial2ScreenState extends State<Tutorial2Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial 2'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              'Sum of Products & Truth Tables',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            const Text(
              'A sum of products is basically a way to represent a logic circuit using boolean algebra.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 25),

            const Text(
              'A truth table contains all possible combinations of inputs and their corresponding outputs for a logic circuit.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 10),


            const Text(
              'Example of a row would be | Input A | Input B | Output |',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 10),

            const Text(
              'So now we replace it with values, for example: | 0 | 1 | 1 |',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),


            const SizedBox(height: 10),


            const Text(
              'Ignore all rows where the output is 0. Where the input is 0 for a column, since im on laptop, we can use the ! symbol for LOW values.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 10),

            const Text(
              'So for the example above, we would write it as: !A * B --> !AB because A was LOW but B was true. Then we do the same thing for the other rows',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 10),

            const Text(
              'where the output is 1 and add all the expressions together with a + sign. This is the SUM of the PRODUCTS.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 10),

            const Text(
              'Since I only had one row for the example our circuit (!AB), would just be NOT A AND B.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),

            const SizedBox(height: 15),

            const Text(
              'You can design a circuit using a sum of products with the help of a truth table. This is especially useful for real world applications!',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
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

              child: Text('Input A: ${inputA ? "HIGH (1)" : "LOW (0)"}'),
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
              child: Text('Input B: ${inputB ? "HIGH (1)" : "LOW (0)"}'),
            ),

            const SizedBox(height: 15),

            Text(output ? "OUTPUT: HIGH (1)" : "OUTPUT: LOW (0)"),
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

              child: Text('Input A: ${inputA ? "HIGH (1)" : "LOW (0)"}'),
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
              child: Text('Input B: ${inputB ? "HIGH (1)" : "LOW (0)"}'),
            ),

            const SizedBox(height: 15),

            Text(output ? "OUTPUT: HIGH (1)" : "OUTPUT: LOW (0)"),
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

              style: ElevatedButton.styleFrom(
                backgroundColor: inputA ? Colors.green : Colors.grey[800], // Green when 1, Dark Grey when 0
                foregroundColor: Colors.white, // Text color
              ),

              onPressed: () {
                setState(() {
                  inputA = !inputA;
                  checkOutput();
                });
              },

              child: Text('Input A: ${inputA ? "HIGH (1)" : "LOW (0)"}'),
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

              style: ElevatedButton.styleFrom(
                backgroundColor: inputB ? Colors.green : Colors.grey[800], // Green when 1, Dark Grey when 0
                foregroundColor: Colors.white, // Text color
              ),

              onPressed: () {
                setState(() {
                  inputB = !inputB; // Flips true to false, or false to true
                  checkOutput();
                });
              },
              child: Text('Input B: ${inputB ? "HIGH (1)" : "LOW (0)"}'),
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
              
              style: ElevatedButton.styleFrom(
                backgroundColor: inputC ? Colors.green : Colors.grey[800], // Green when 1, Dark Grey when 0
                foregroundColor: Colors.white, // Text color
              ),

              onPressed: () {
                setState(() {
                  inputC = !inputC; // Flips true to false, or false to true
                  checkOutput();
                });
              },
              child: Text('Input C: ${inputC ? "HIGH (1)" : "LOW (0)"}'),
            ),

            const SizedBox(height: 15),

            Text(
              output ? "OUTPUT: HIGH (1)" : "OUTPUT: LOW (0)",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),

            )
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
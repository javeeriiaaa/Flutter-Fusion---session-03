import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screen1(),
    );
  }
}

/////////////////////// STATELESS WIDGET ///////////////////////
/*class Screen1 extends StatelessWidget {
  Screen1({super.key});

  String name = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          name,
          style: TextStyle(fontSize: 40),
        )
      ),
    );
  }
}*/

/////////////////////// STATEFUL WIDGET ///////////////////////
/*class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String name = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold  
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                name = 'Dart';
              });
            },
            child: Text('Change Name'),
          )
        ],
      ),
    );
  }
}*/

/////////////////////// STATEFUL WIDGET - INCREMENT EXAMPLE ///////////////////////
/*class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold  
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              number++;
            });
          }, child: const Text('Increment'))
        ],
      ),
    );
  }
}*/

/////////////////////// TEXTFORMFIELD ///////////////////////

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int counter = 0;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  counter.toString(),
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                    width: 300,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Enter a number',
                        border: OutlineInputBorder(),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter = int.parse(_controller.text.trim());
                      });
                    },
                    child: Text('Show this'))
              ],
            )));
  }
}

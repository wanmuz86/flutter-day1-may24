import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Hello world",
              style: TextStyle(fontSize: 32, color: Colors.red),
            ),
            Text(
              "Welcome to my app",
              style: TextStyle(fontSize: 24, color: Colors.cyanAccent),
            ),
            Text(
              "I hope you enjoy it",
              style: TextStyle(fontSize: 20, color: Colors.deepPurple),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is left", style: TextStyle(fontSize: 20, color: Colors.deepPurple),),
                Text("This is right", style: TextStyle(fontSize: 20, color: Colors.deepPurple),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

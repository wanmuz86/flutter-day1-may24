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
  // Create a new TextEditingController,
  // name it nameEditingController

  var nameEditingController = TextEditingController();

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
            SizedBox(height: 8,),
            Text(
              "Welcome to my app",
              style: TextStyle(fontSize: 24, color: Colors.cyanAccent),
            ),
            SizedBox(height: 8,),
            Text(
              "I hope you enjoy it",
              style: TextStyle(fontSize: 20, color: Colors.deepPurple),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is left", style: TextStyle(fontSize: 20, color: Colors.deepPurple),),
                SizedBox(width: 16,),
                Text("This is right", style: TextStyle(fontSize: 20, color: Colors.deepPurple),)
              ],
            ),
            SizedBox(height: 8,),
            Image.network("https://a.travel-assets.com/findyours-php/viewfinder/images/res70/473000/473015-Kuala-Lumpur.jpg"),
            SizedBox(height: 8,),
            TextField(
              controller: nameEditingController,
              decoration:
              InputDecoration(hintText: "Enter your name"),),
            TextButton(
              onPressed: (){
                print("Hello ${nameEditingController.text}");
              },
              child: Text("Press me!"),
            )
          ],
        ),
      ),
    );
  }
}

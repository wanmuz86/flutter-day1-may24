import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: const Text("Hello World"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Hello world",
                  style: GoogleFonts.quicksand(
                    textStyle:const TextStyle(fontSize: 32, color: Colors.red)
                  ),
                ),
                const SizedBox(height: 8,),
                Text(
                  "Welcome to my app",
                  // THe font is camelCase whenever there is a space in font name in Google Font web
                  // It will become capital letter here
                  style: GoogleFonts.bebasNeue(
                    textStyle:const TextStyle(fontSize: 24, color: Colors.cyanAccent)
                  ),
                ),
                const SizedBox(height: 8,),
                const Text(
                  "I hope you enjoy it",
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                ),
                const SizedBox(height: 8,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This is left", style: TextStyle(fontSize: 20, color: Colors.deepPurple),),
                    SizedBox(width: 16,),
                    Text("This is right", style: TextStyle(fontSize: 20, color: Colors.deepPurple),)
                  ],
                ),
                const SizedBox(height: 8,),
                Image.network("https://a.travel-assets.com/findyours-php/viewfinder/images/res70/473000/473015-Kuala-Lumpur.jpg"),
                const SizedBox(height: 8,),
                Image.asset("images/app_poster.png"),
                const SizedBox(height: 8,),
                TextField(
                  controller: nameEditingController,
                  decoration:
                  const InputDecoration(hintText: "Enter your name"),),
                TextButton(
                  onPressed: (){
                    var snackBar = SnackBar(content: Text("Hello ${nameEditingController.text}"));
                   ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    // print("Hello ${nameEditingController.text}");
                  },
                  child: const Text("Press me!"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

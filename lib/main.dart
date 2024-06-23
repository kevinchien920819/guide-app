import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // Remove the 'const' keyword
      home: Scaffold(
        appBar: AppBar(title: Text('Default Page')),
        body: MainScreen(),
      ),
    );
  }

}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Expanded(
                child:Center( 
                child:Text(
                  'where you go ?',
                  style: TextStyle(fontSize: 20),
                ),
                ), 
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {

                },
              ),
            ],
          ),
        ),
        //the optionbuttono art presssed
        OptionButton(label: 'Home', onTap: () {}),
        OptionButton(label: 'Work place', onTap: () {}),
        OptionButton(label: 'Saved place', onTap: () {}),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: FloatingActionButton(
            onPressed: () { //if the mic are pressed

            },
            child: Icon(Icons.mic),  // Ensure all children are also const if needed
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const OptionButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(label),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50), // specific height
        ),
      ),
    );
  }
}

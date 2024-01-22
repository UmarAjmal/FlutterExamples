import 'package:flutter/material.dart';

void main() {
  print(" Ali Hamza Flutter");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar  (
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search action
                print('Search pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Handle settings action
                print('Settings pressed');
              },
            ),
            // Add more action widgets as needed
          ],
          title: Text(" Abdullah"),
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){},),
      ),
    );
  }
}




import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Buttons'),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Deliver features faster'),
            Text('Craft beautiful UIs'),
            Expanded(
              child: FittedBox(
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () {
            },
            child: Icon(Icons.minimize_outlined),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

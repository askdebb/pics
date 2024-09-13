// Import flutter hleper library
import 'package:flutter/material.dart';

// create a class that will be our custom widget
// This class must extend the statelesswidget base class

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
          backgroundColor: Colors.amber.shade600,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.amber.shade500,
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
        ),
        body: Text('${counter}'),
      ),
    );
  }
}

// Import flutter hleper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

// create a class that will be our custom widget
// This class must extend the statelesswidget base class

class App extends StatefulWidget {
  const App({super.key});

  @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    String url = 'https://jsonplaceholder.typicode.com/photos/$counter';
    Uri uri = Uri.parse(url);
    var response = await get(uri);
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lets see some images!'),
          backgroundColor: Colors.amber.shade600,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber.shade500,
          onPressed: fetchImage,
          child: Icon(
            Icons.add,
          ),
        ),
        body: ImageList(images),
      ),
    );
  }
}

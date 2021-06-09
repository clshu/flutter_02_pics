import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import "dart:convert";
import "widgets/images_list.dart";

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    // This part is slightly different from Stephen's instruction
    // http.get signature is changed
    final url =
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
    final response = await get(url);

    final imageModel = ImageModel.fromJson(jsonDecode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Let\'s see some images'),
        ),
      ),
    );
  }
}

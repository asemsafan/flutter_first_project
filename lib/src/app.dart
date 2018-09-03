// import flutter helper library;
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

// Create Class
// Using StatelessWidget because it will contain
// the data which will not change
class AppState extends State<App> {
  //declaring variables
  int counter = 0;
  List<ImageModel> images = [];
  void fetchImage() async {
    counter++;
    String url = "https://jsonplaceholder.typicode.com/photos/$counter";
    var response = await get(url);
    var imageModel = new ImageModel.fromJson(json.decode(response.body));
    // any change in appearance should be added to the setState method
    setState(() {
      images.add(imageModel);
    });
  }
  //build method which will run when this class is called
  Widget build(context) {
    return new MaterialApp(
      // home attribute => first screen to show on the screen
      home: new Scaffold(
        body: new Center(
          child: new ImageList(images),
        ),
        appBar: new AppBar(
          title: new Text("Let's See Some Images"),
        ),
        floatingActionButton: new FloatingActionButton(
          //Floating action button sh
          child: new Icon(Icons.add_a_photo),
          onPressed: fetchImage,
        ),
      ),
    );
  }
}

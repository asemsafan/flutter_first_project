// import material library from flutter package
import 'package:flutter/material.dart';

// make main function
// return nothing => void
void main(){
  var app = MaterialApp(
    // home attribute => first screen to show on the screen
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Let's See Some Images"),
      ),
      floatingActionButton: new FloatingActionButton(
        //Floating action button sh
        child: new Icon(Icons.add_a_photo),
        onPressed: (){
          //Print method appear in the console
          print('Hello');
        },
      ),
    ),
  );
  //runApp => method to run app and show widgets on the screen
  runApp(app);
}


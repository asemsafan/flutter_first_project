// import flutter helper library;
import 'package:flutter/material.dart';

// Create Class
// Using StatelessWidget because it will contain
// the data which will not change
class App extends StatelessWidget{
  //build method which will run when this class is called
  Widget build(context){
    return new MaterialApp(
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
  }
}
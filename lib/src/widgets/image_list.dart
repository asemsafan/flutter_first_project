import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return new ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: new BoxDecoration(
          border: Border.all(
        color: Colors.black26,
      )),
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: new Column(
        children: <Widget>[
          Image.network(image.url),
          new Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text(image.title),
        ],
      ),
    );
  }
}

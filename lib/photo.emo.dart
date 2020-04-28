import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoEmo extends StatefulWidget {
  @override
  _PhotoEmoState createState() => _PhotoEmoState();
}

class _PhotoEmoState extends State<PhotoEmo> {
  File imageURI;

  Future getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      imageURI = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF0),
      appBar: AppBar(
        elevation: 8.0,
        title: Text('Face Emotions'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            imageURI == null
                ? Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.blue,
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () => getImageFromCamera(),
                      child: Container(
                        height: height / 3,
                        padding: EdgeInsets.only(top: 64.0),
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.file_upload,
                              color: Colors.white,
                              size: 48,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              'touch to upload',
                              maxLines: 1,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Image.file(
                    imageURI,
                    height: height / 3,
                    width: width,
                  ),

            SizedBox(
              height: 16.0,
            ),

            //
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: Text('Emotions'),
                  ),
                  Card(
                    margin: EdgeInsets.all(8.0),
                    clipBehavior: Clip.antiAlias,
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VideoEmo extends StatefulWidget {
  @override
  _VideoEmoState createState() => _VideoEmoState();
}

class _VideoEmoState extends State<VideoEmo> {
  File videoURI;

  Future getImageFromCamera() async {
    var video = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      videoURI = video;
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
        title: Text('Video Emotions'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            videoURI == null
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
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: height / 3,
                          padding: EdgeInsets.only(top: 64.0),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.video_library,
                            size: 48,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'touch to upload',
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                : Image.file(
                    videoURI,
                    height: height / 3,
                    width: width,
                  ),

            SizedBox(
              height: 16.0,
            ),

            // actions
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

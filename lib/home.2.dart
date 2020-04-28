import 'package:flutter/material.dart';
import 'package:gbvapp/photo.emo.dart';
import 'package:gbvapp/video.emo.dart';

class HomeScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF0),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              clipBehavior: Clip.antiAlias,
              color: Colors.lightBlueAccent,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: Container(
                width: width,
                height: height / 2.5,
                padding: EdgeInsets.only(top: 96.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.face,
                      color: Colors.white,
                      size: 48,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "upload your face and watch the magic.",
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),

            // actions
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(64.0),
                        child: Text(
                          'Select to Proceed.',
                          maxLines: 1,
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.cloud_upload,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PhotoEmo(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  "Face Emotions \n from Image.",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueAccent,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.ondemand_video,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => VideoEmo(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  "Face Emotions \n from Video.",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

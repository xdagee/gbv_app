import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle display1 = Theme.of(context).textTheme.display1;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Trala',
          style: TextStyle(
            fontFamily: 'matura',
            fontSize: 18.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('images/violin-and-bow.jpg'),
              ),
              Container(
                // decoration: BoxDecoration(
                //   color: Colors.purple,
                // ),
                child: Text(
                  'Violin',
                  style: TextStyle(
                      fontFamily: 'matura',
                      color: Colors.black,
                      fontSize: 48.0),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                // decoration: BoxDecoration(
                //   color: Colors.blueGrey,
                // ),
                child: Text(
                  'the violin is a string instrument.',
                  style: TextStyle(
                      fontFamily: 'matura',
                      color: Colors.black,
                      fontSize: 28.0),
                ),
              ),
              Expanded(
                child: Text(
                  'signed by Ashley',
                  style: GoogleFonts.lato(textStyle: display1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

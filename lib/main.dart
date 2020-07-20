import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "News App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latest News")
        ),
        body: Text("Latest News here"),
      )
    );
  }
}

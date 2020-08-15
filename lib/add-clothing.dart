import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyAddClothing(),
    );
  }
}

class MyAddClothing extends StatelessWidget{
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title:Text('closet')
      ),
      body: Center(

            child: GridView.extent(
              maxCrossAxisExtent: 150,
              padding: const EdgeInsets.all(4),
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He is strong"),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He is strong"),
                  color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He is strong"),
                  color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He is strong"),
                  color: Colors.teal[400],
                )
              ]
            )
          ),


      
    );
  }
}
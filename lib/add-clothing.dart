import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/image-pick.dart';


class MyAddClose extends StatelessWidget {
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
        child: Scrollbar(


          child: GridView.extent(
              maxCrossAxisExtent: 200,
              padding: const EdgeInsets.all(5),
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    iconSize: 50,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagePickerView()),
                      );

                    },
                    color: Colors.green,
                    icon: Icon(
                        Icons.add_circle
                    ),
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),




              ]
          ),
        ),

          ),


      
    );
  }
}
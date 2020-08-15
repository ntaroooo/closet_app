import 'package:flutter/material.dart';
import 'package:flutter_app/add-clothing.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(

            child: Container(
              padding: const EdgeInsets.only(top: 50.0),
              child: Image.asset('images/inner.jpg'),
              height: 200,
              width: 200,
            )
          ),
          Center(

            child:
              Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 50.0, bottom: 30.0, left: 50.0),
              child: Container(
                  child: Center(
                    child: InkWell(
                    child: Text('クローゼット'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAddClothing())
                      );

                    },
                    ),
                  ),
                  height: 75,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0xffa1a1a1),
                          offset: Offset(
                            5,
                            5,
                          ),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0xffffffff),
                          offset: Offset(
                            -5,
                            -5,
                          ),
                        ),
                      ],
                      gradient: LinearGradient(
                        stops: [0, 1],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:
                        [Color(0xffffffff), Color(0xffe6e6e6)],
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          )
                      )
                  ),




              )
              ),




            ),

          Center(

              child: Container(
                padding: const EdgeInsets.only(top: 30.0),
                child: Image.asset('images/fasion.jpg'),
                height: 200,
                width: 200,
              )
          ),

          Center(
            child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  child: Center(
                    child: InkWell(
                      child: Text('ファッション'),
                      onTap: (){

                      },
                    ),
                  ),
                  height: 75,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0xffa1a1a1),
                          offset: Offset(
                            5,
                            5,
                          ),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0xffffffff),
                          offset: Offset(
                            -5,
                            -5,
                          ),
                        ),
                      ],
                      gradient: LinearGradient(
                        stops: [0, 1],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:
                        [Color(0xffffffff), Color(0xffe6e6e6)],
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          )
                      )
                  ),




                )
            ),



          ),


        ],
      ),
    );

  }
}
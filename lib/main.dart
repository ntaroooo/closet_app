import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home-page.dart';
import 'package:flutter_app/sign-up-state.dart';

import 'package:flutter_app/sign_up.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyLogin(),
    );
  }
}

class MyLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final _passwordFocusNode = FocusNode();
    final _form = GlobalKey<FormState>();
    String _id;
    String _password;
    return Scaffold(

      body: Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("images/sea.jpg"),
               fit: BoxFit.cover,
             ),
           ),


           child: Form(
            key: _form,
            child: Column(
             children: <Widget>[





               Padding(
                 padding: const EdgeInsets.only(top: 150.0, right: 50.0, bottom: 30.0, left: 50.0),

                 child: TextFormField(
                   focusNode: _passwordFocusNode,

                   decoration: InputDecoration(
                       labelText: 'ID',
                       border: OutlineInputBorder(),
                       filled: true,
                       fillColor: Colors.white,


                   ),

                   onSaved: (value){
                     _id = value;
                   },
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(50.0),
                 child: TextFormField(
                   focusNode: _passwordFocusNode,
                   style: TextStyle(
                       backgroundColor: Colors.white
                   ),
                   decoration: InputDecoration(
                       labelText: 'Password',
                       border: OutlineInputBorder(),
                       filled: true,
                       fillColor: Colors.white,
                   ),
                   onSaved: (value){
                     _password = value;
                   },
                 ),
               ),
               FlatButton(
                 child: Text('Sign In'),
                 color: Colors.white,
                 shape: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
                 onPressed: (){

                   _form.currentState.save();
                   print(_id);
                   print(_password);
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => MyHomePage())
                   );

                 },
                 splashColor: Colors.green,
               ),

               Container(
                 child: InkWell(
                   child: Text("create your new account"),
                   onTap: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => MySignUp2())
                     );
                   },
                 ),
                 //child: Text('creat your new account'),
               ),







           ],
          ),
        ),

      ),

    );
  }
}




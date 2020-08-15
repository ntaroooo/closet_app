import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySignUP(),
    );
  }
}

class MySignUP extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final _passwordFocusNode = FocusNode();
    final _emailFocusNode = FocusNode();
    final _form = GlobalKey<FormState>();
    String _id;
    String _email;
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
                padding: const EdgeInsets.only(top: 20.0, right: 50.0, bottom: 30.0, left: 50.0),
                child: TextFormField(
                  focusNode: _emailFocusNode,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                  ),
                  onSaved: (value){
                    _email = value;
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 50.0, bottom: 30.0, left: 50.0),

                child: TextFormField(
                  focusNode: _passwordFocusNode,
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
                child: Text('Sign Up'),
                color: Colors.white,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                onPressed: (){
                  _form.currentState.save();
                  print(_id);
                  print(_email);
                  print(_password);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );

                },
                splashColor: Colors.green,
              ),






            ],
          ),
        ),

      ),

    );
  }
}

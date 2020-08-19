import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/add-clothing.dart';
import 'package:flutter_app/home-page.dart';
import 'package:flutter_app/sign-up-state.dart';


void main() {
  runApp(SignIn());
}



class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySignIn2(),
    );
  }
}

class MySignIn2 extends StatefulWidget{
  @override
  _MySignInState createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn2> {

  // 入力されたメールアドレス（ログイン）
  String loginUserEmail = "";
  // 入力されたパスワード（ログイン）
  String loginUserPassword = "";
  // 登録・ログインに関する情報を表示
  String infoText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sea.jpg"),
            fit: BoxFit.cover,
          ),
        ),


        child: Container(

          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 150.0, right: 50.0, bottom: 30.0, left: 50.0),

                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,

                  ),
                  onChanged: (String value) {
                    setState(() {
                      loginUserEmail = value;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,

                  ),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      loginUserPassword = value;
                    });
                  },
                ),
              ),
              RaisedButton(
                child: Text('Sign In'),
                color: Colors.white,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                onPressed: () async {
                  try {
                    // メール/パスワードでログイン
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final AuthResult result =
                    await auth.signInWithEmailAndPassword(
                      email: loginUserEmail,
                      password: loginUserPassword,
                    );
                    // ログインに成功した場合
                    final FirebaseUser user = result.user;
                    setState(() {
                      infoText = "Success：${user.email}";
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage())
                    );



                  } catch (e) {
                    // ログインに失敗した場合
                    setState(() {
                      infoText = "failed：${e.message}";
                      });
                  }



                }


              ),

              Container(
                child: InkWell(
                  child: Text("create your new account"),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp())
                    );
                  },
                ),
                //child: Text('creat your new account'),
              ),


              Text(infoText),
            ],
          ),
        ),
      ),
    );
  }
}



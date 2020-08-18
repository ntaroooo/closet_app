import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySignUp2(),
    );
  }
}

class MySignUp2 extends StatefulWidget{
  @override
  _MySignState createState() => _MySignState();
}


class _MySignState extends State<MySignUp2> {
  // 入力されたメールアドレス
  String newUserEmail = "";
  // 入力されたパスワード
  String newUserPassword = "";
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
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 10.0, bottom: 30.0, left: 10.0),
                child: TextFormField(
                  // テキスト入力のラベルを設定
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white),

                  onChanged: (String value) {
                    setState(() {
                      newUserEmail = value;
                    });
                  },
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(top: 20.0, right: 10.0, bottom: 30.0, left: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      newUserPassword = value;
                    });
                  },
                ),
              ),
              RaisedButton(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                color: Colors.white,
                onPressed: () async {
                  try {
                    // メール/パスワードでユーザー登録
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final AuthResult result =
                    await auth.createUserWithEmailAndPassword(
                      email: newUserEmail,
                      password: newUserPassword,
                    );
                    // 登録したユーザー情報
                    final FirebaseUser user = result.user;
                    setState(() {
                      infoText = "Success：${user.email}";
                    });
                  } catch (e) {
                    // 登録に失敗した場合
                    setState(() {
                      infoText = "failed：${e.message}";
                    });
                  }
                },
                child: Text("Sign Up"),
              ),
              Text(infoText)
            ],
          ),
        ),
      ),
    );
  }
}
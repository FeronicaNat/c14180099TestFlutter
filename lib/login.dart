import 'package:flutter/material.dart';
import 'data.dart';
import 'halawaluang.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void login() {
     List<Data> dftrakun;

    //  dftrakun=Data.user;
     
     for(var i=0;i<dftrakun.length;i++){

     }
     



    // List<Data> dftrakun;
    // print (dftrakun.length);
    // for(i=)
     Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HalAwalUang()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      )),
      body: Container(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Hello Sign Into Your Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Column(
                            children: [
                              TextField(
                                  controller: email,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      // border: OutlineInputBorder(),
                                      hintText: "Input Email",
                                      labelText: "Email")
                                  // hintText: 'Input your email'),
                                  ),
                              TextField(
                                  controller: pass,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      // border: OutlineInputBorder(),
                                      hintText: "Input Password",
                                      labelText: "Password")
                                  // hintText: 'Input your email'),
                                  ),
                              ElevatedButton(
                                  onPressed: login, child: Text("Login"))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

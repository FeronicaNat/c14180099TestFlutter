import 'package:flutter/material.dart';
import 'data.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  void register() {
    setState(() {
      if (user.text != "" && email.text != "" && pass.text != "") {
        Data(user: user.text, email: email.text, password: pass.text);
        
      }

    });
  }

  TextEditingController user = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
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
                          "Create Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Column(
                              children: [
                                TextField(
                                    controller: user,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.people),
                                        // border: OutlineInputBorder(),
                                        hintText: "Input Username",
                                        labelText: "Username")
                                    // hintText: 'Input your email'),
                                    ),
                                TextField(
                                    controller: email,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email),
                                        // border: OutlineInputBorder(),
                                        hintText: "Input Email Id",
                                        labelText: "Email ID")
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
                                    onPressed: () {}, child: Text("Register"))
                              ],
                            )),
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

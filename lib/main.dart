import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'data.dart';
import 'halawaluang.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Halpertama(),
        '/Register': (context) => Register(),
        '/Login': (context) => Login(),
        '/HalAwalUang':(context)=>HalAwalUang(),
        // '/HalEmpat': (context) => HalEmpat(ModalRoute.of(context).settings.arguments as String),
        // '/HalLima': (context) => HalLima(ModalRoute.of(context).settings.arguments as Data),
      },
      title: "Homepage",
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class Halpertama extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Halpertama> {

  // Data isidata = Data(user: "1", email: "1", password: "1");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Homepage",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        body: Container(
          
            child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text("Login"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                    child: Text("Register Now"))
              ],
            )
          ],
        )),
      ),
    );
  }
}

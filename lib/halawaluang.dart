import 'package:flutter/material.dart';
class HalAwalUang extends StatefulWidget {
  @override
  _HalAwalUangState createState() => _HalAwalUangState();
}

class _HalAwalUangState extends State<HalAwalUang> {

  void hitunguang(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      )),
      body: Container(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
          ElevatedButton(onPressed: hitunguang, child: Text("Hitung Uang"))
        ],)
      ),
      
      
    );
  }
}
//    *. Halaman 5 adalah halaman untuk menghitung bunga deposito
//     *. Desain dapat dibuat sendiri (atau mengambil contoh di website)
//     *. Item yang harus ada, 
//         -. Daftar nama bank penyedia deposito
//         -. Berapa bulan jangka waktu deposito nya
//         -. Jumlah uang yang didepositokan
//         -. Button untuk Hitung
//    *. Button Hitung diklik akan menghasilkan jumlah uang yang didapat setelah jangka waktu deposito nya




// Daftar Bank yang dimasukkan adalah sebagai berikut :
//         1. Bank Mandiri  1Bln (2%), 3 Bln (3%), 6 Bln (3%) 
//         2. Bank J Trust  1 Bln (3.75%), 3 Bln(4%), 6 Bln(4%)
//         3. Bank BNI 1 Bln (2,85%), 3 Bln (2,85%), 6 Bln (2,85%)
//         4. Bank CIMB Niaga 1 Bln(3.20%),  3 Bln(3,5%), 6 Bln(3,5%)

import 'package:flutter/material.dart';

class HitungUang extends StatefulWidget {
  @override
  
  _HitungUangState createState() => _HitungUangState();
}

class _HitungUangState extends State<HitungUang> {
  String isidropdown="Mandiri";
  TextEditingController bank=TextEditingController();
    TextEditingController waktu=TextEditingController();
      TextEditingController uang=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(value: "Mandiri", child: Text("Mandiri")),
                DropdownMenuItem<String>(value: "JTrust", child: Text("JTrust")),
                DropdownMenuItem<String>(value: "BNI", child: Text("BNI")),
                DropdownMenuItem<String>(value: "CIMB Niaga", child: Text("CIMB Niaga")),
              ],
              value: isidropdown,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              hint: Text("Dropdown Button"),
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.orange,
              ),
              onChanged: (String value) {
                setState(() {
                  isidropdown = value;
                  print(isidropdown);
                });
              },
            ),
                                                    TextField(
                                  controller: waktu,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      // border: OutlineInputBorder(),
                                      hintText: "Input Waktu",
                                      labelText: "Waktu bulan")
                                  // hintText: 'Input your email'),
                                  ),
                                                    TextField(
                                  controller: uang,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      // border: OutlineInputBorder(),
                                      hintText: "Input Uang",
                                      labelText: "Uang")
                                  // hintText: 'Input your email'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {}, child: Text("Hitung Uang"))
                                
        
      ],),
    );
  }
}
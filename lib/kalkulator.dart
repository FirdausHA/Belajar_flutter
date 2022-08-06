import 'package:flutter/material.dart';

class kalkulator extends StatefulWidget {
  const kalkulator({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  TextEditingController ctrAngka1 = TextEditingController();
  TextEditingController ctrAngka2 = TextEditingController();
  double hasil = 0;
  double angka1 = 0;
  double hasilBagi = 0;
  String hasilString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('kalkulator'),),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text(
                'Hallo ' + widget.name,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrAngka1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Angka Pertama",
                )
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                  controller: ctrAngka2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Angka Kedua",
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      double angka1 = double.parse(ctrAngka1.text);
                      double angka2 = double.parse(ctrAngka2.text);
                      setState(() {
                        hasil = angka1 + angka2;
                        hasilString = hasil.toString();
                      });
                    },
                    child: Text('+')),
                ElevatedButton(
                    onPressed: () {
                      double angka1 = double.parse(ctrAngka1.text);
                      double angka2 = double.parse(ctrAngka2.text);
                      setState(() {
                        hasil = angka1 - angka2;
                        hasilString = hasil.toString();
                      });
                    },
                    child: Text('-')),
                ElevatedButton(
                    onPressed: () {
                      double angka1 = double.parse(ctrAngka1.text);
                      double angka2 = double.parse(ctrAngka2.text);
                      setState(() {
                        hasil = angka1 * angka2;
                        hasilString = hasil.toString();
                      });
                    },
                    child: Text('*')),
                ElevatedButton(
                    onPressed: () {
                      double angka1 = double.parse(ctrAngka1.text);
                      double angka2 = double.parse(ctrAngka2.text);
                      setState(() {
                        hasilBagi = angka1 / angka2;
                        hasilString = hasilBagi.toString();
                      });
                    },
                    child: Text('/')),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 40),
              child: Text(
                  "Hasil" + hasilString.toString(),
                   style: TextStyle(fontSize: 20 , color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

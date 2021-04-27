import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //deklarasi variabel
  final txtkodeobat = TextEditingController();
  final txtnamaobat = TextEditingController();
  final txtjenisobat = TextEditingController();
  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Icon(Icons.circle),
        title: Text(txtkodeobat.text),
        subtitle: Text(txtnamaobat.text),
        trailing: Text(txtjenisobat.text),
        
      ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: Text("TOKO OBAT")),
            body: new ListView(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextField(
                        controller: txtkodeobat,
                        decoration: InputDecoration(hintText: 'Kode Obat'),
                      ),
                      TextField(
                        controller: txtnamaobat,
                        decoration: InputDecoration(hintText: 'Nama Obat'),
                      ),
                      TextField(
                        controller: txtjenisobat,
                        decoration: InputDecoration(hintText: 'Jenis Obat'),
                      ),
                      RaisedButton(child: Text("Tambah"), onPressed: onTambah),
                    ],
                  ),
                ),
                new Column(
                  // Isi List View
                  children: data,
                )
              ],
            )));
  }
}

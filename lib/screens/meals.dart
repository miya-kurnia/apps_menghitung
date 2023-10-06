import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  double panjang = 0;
  double lebar = 0;
  double tinggi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          panjang = double.tryParse(txt) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Input Panjang",
                          suffixText: "m", // Changed to suffixText
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Panjang",
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          lebar = double.tryParse(txt) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        // textAlign: TextAlign center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Input Lebar",
                          suffixText: "m", // Changed to suffixText
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Lebar",
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          tinggi = double.tryParse(txt) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Input Tinggi",
                          suffixText: "m", // Changed to suffixText
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Tinggi",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    // Change RaisedButton to ElevatedButton
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => VolumePage(
                          input_panjang: panjang,
                          input_lebar: lebar,
                          input_tinggi: tinggi,
                        ),
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text(
                      "Hitung Volume",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VolumeApp extends StatefulWidget {
  @override
  _VolumeAppState createState() => _VolumeAppState();
}

class _VolumeAppState extends State<VolumeApp> {
  double panjang = 0;
  double lebar = 0;
  double tinggi = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Input Panjang",
                          suffixText: "m", // Changed to suffixText
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Panjang",
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        // textAlign: TextAlign center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Input Lebar",
                          suffixText: "m", // Changed to suffixText
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Lebar",
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Input Tinggi",
                          suffixText: "m", // Changed to suffixText
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Tinggi",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    // Change RaisedButton to ElevatedButton
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => VolumePage(
                          input_panjang: panjang,
                          input_lebar: lebar,
                          input_tinggi: tinggi,
                        ),
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text(
                      "Hitung Volume",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LuasPage extends StatelessWidget {
  LuasPage({required this.input_panjang, required this.input_lebar});
  final double input_panjang;
  final double input_lebar;

  double hasil = 0.0; // Initialize hasil with 0.0

  @override
  Widget build(BuildContext context) {
    hasil = input_panjang * input_lebar;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              "Panjang : $input_panjang m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Lebar : $input_lebar m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Jadi Luasnya adalah : $hasil m²",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VolumePage extends StatelessWidget {
  VolumePage({
    required this.input_panjang,
    required this.input_lebar,
    required this.input_tinggi,
  });
  final double input_panjang;
  final double input_lebar;
  final double input_tinggi;

  double hasil = 0.0; // Initialize hasil with 0.0

  @override
  Widget build(BuildContext context) {
    hasil = input_panjang * input_lebar * input_tinggi;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              "Panjang : $input_panjang m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Lebar : $input_lebar m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Tinggi : $input_tinggi m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Jadi Volumenya adalah : $hasil m³",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

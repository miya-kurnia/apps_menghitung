import 'package:flutter/material.dart';
import 'package:meals/screens/meals.dart';

class CategoriesScreen extends StatelessWidget {
  double panjang = 0;
  double lebar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
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
            SizedBox(height: 16.0),
            TextField(
              onChanged: (txt) {
                lebar = double.tryParse(txt) ?? 0.0;
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
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
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LuasPage(
                      input_panjang: panjang,
                      input_lebar: lebar,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Choose your desired color
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text(
                'Hitung Luas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

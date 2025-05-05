import 'package:flutter/material.dart';

class CircleArea extends StatefulWidget {
  const CircleArea({super.key});

  @override
  State<CircleArea> createState() => _CircleAreaState();
}

class _CircleAreaState extends State<CircleArea> {
  double radius = 0;
  double area = 0;
  final double pi = 3.14;

  void calculateArea() {
    setState(() {
      area = pi * radius * radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle Area Calculator"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter radius in cm',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                radius = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: calculateArea,
                child: Text("Calculate Area"),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Area: ${area.toStringAsFixed(2)} cm²",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

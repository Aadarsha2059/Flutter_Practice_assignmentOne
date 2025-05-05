import 'package:flutter/material.dart';

class Simpleinterest extends StatefulWidget {
  const Simpleinterest({super.key});

  @override
  State<Simpleinterest> createState() => _SimpleinterestState();
}

class _SimpleinterestState extends State<Simpleinterest> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double interest = 0;

  void calculateInterest() {
    setState(() {
      interest = (principal * rate * time) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the principal amount',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                principal = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter the rate",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                rate = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter the time (years)",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                time = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: calculateInterest,
                child: Text("Calculate Interest"),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Simple Interest: ₹${interest.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

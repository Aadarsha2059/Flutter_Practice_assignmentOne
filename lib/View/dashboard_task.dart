import 'package:first_app/View/first_view.dart';
import 'package:flutter/material.dart';
import 'pallindrome_num.dart'; // Make sure this matches your file path
import 'simple_interest.dart'; // Import the Simpleinterest screen
import 'area_circle.dart'; // Import the CircleArea screen (renamed)

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PalindromeChecker()),
                  );
                },
                child: Text("Palindrome Checker"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Simpleinterest()),
                  );
                },
                child: Text("Simple Interest Calculator"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircleArea()),
                  );
                },
                child: Text("Circle Area Calculator"),
              ),
            ),
             SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstView()),
                  );
                },
                child: Text("Addition"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

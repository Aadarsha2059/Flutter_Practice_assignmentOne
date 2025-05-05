import 'package:flutter/material.dart';

class PalindromeChecker extends StatefulWidget {
  const PalindromeChecker({super.key});

  @override
  State<PalindromeChecker> createState() => _PalindromeCheckerState();
}

class _PalindromeCheckerState extends State<PalindromeChecker> {
  String input = '';
  String result = '';

  bool isPalindrome(String value) {
    String reversed = value.split('').reversed.join('');
    return value == reversed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome Checker"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                input = value;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter a number",
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (input.isNotEmpty && int.tryParse(input) != null) {
                      result = isPalindrome(input)
                          ? "It is a palindrome number"
                          : "It is not a palindrome number";
                    } else {
                      result = "Please enter a valid number";
                    }
                  });
                },
                child: Text("Check"),
              ),
            ),
            SizedBox(height: 12),
            Text(
              result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

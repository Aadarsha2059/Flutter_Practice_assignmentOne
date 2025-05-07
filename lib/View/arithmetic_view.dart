import 'package:flutter/material.dart';

class ArithmeticModel extends StatefulWidget {
  const ArithmeticModel({super.key});

  @override
  State<ArithmeticModel> createState() => _ArithmeticModelState();
}

class _ArithmeticModelState extends State<ArithmeticModel> {
  // TextEditingController
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  int result = 0;

  // Global Key
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Form(
        key: myKey,
        child: Column(
          children: [
            SizedBox(height: 8),
            TextFormField(
              // onChanged: (value) {
              //   var first = int.parse(value);
              // },
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter first no",

                // Example of RichText inside decoration (this is not valid here but shown as reference)
                // body:RichText(text: const TextSpan(
                //   text: 'Hello',
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: 30,
                //   ),
                //   children: <TextSpan>[
                //     TextSpan(
                //       text: ' bold ',
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         color: Colors.amber,
                //       ),
                //     ),
                //     TextSpan(
                //       text: 'Addition',
                //     )
                //   ]
                // ))
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter the first num";
                }
                return null;
              },
            ),
            SizedBox(height: 8),
            TextFormField(
              // onChanged: (value) {
              //   second = int.parse(value);
              // },
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter second no",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter the second number";
                }
                return null;
              },
            ),
            SizedBox(height: 8),
            // Example of invalid body content — removed
            // Container(
            //   color.Colors.zzzzzzzzzzz
            // )
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    setState(() {
                      int first = int.tryParse(firstController.text) ?? 0;
                      int second = int.tryParse(secondController.text) ?? 0;
                      result = first + second;
                    });
                  }
                },
                child: Text("Add"),
              ),
            ),
            SizedBox(height: 8),

            // Fixed Container example (was commented and had invalid syntax)
            // Container(
            //   color: Colors.blueGrey,
            //   width: 300,
            //   child: Text(
            //     'Result',
            //     style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.red,
            //     ),
            //   ),
            // ),

            Text("Result : $result", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}

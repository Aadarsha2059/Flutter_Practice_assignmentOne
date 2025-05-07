import 'package:flutter/material.dart';

class UiTask extends StatelessWidget {
  const UiTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon row example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Call,Route,Share')),
        body: const Center(child: IconRowWidget()),
      ),
    );
  }
}

class IconRowWidget extends StatelessWidget {
  const IconRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.yellow[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          IconWithText(icon: Icons.call, label: 'Call'),
          IconWithText(icon: Icons.near_me, label: 'route'),
          IconWithText(icon: Icons.share, label: 'Share'),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String label;
  const IconWithText({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 4)],
          ),
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}

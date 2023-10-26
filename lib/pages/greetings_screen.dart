import 'package:flutter/material.dart';
import 'package:greetings/constants/contstants.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showGreetings(context);
          },
          child: const Text('Greetings'),
        ),
      ),
    );
  }
}

// Show Dialog
showGreetings(context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ],
      title: const Text(
        Greetings.greets,
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}

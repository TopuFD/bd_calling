import 'package:flutter/material.dart';
import 'package:mytodo/screen/home_work_one.dart';
import 'package:mytodo/screen/home_work_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const HomeWorkOne()));
                },
                child: const Text("Home Work One")),
            const SizedBox(height: 5,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const HomeWorkTwo()));
                },
                child: const Text("Home Work Two")),
          ],
        ),
      ),
    );
  }
}

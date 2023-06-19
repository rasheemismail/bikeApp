import "package:flutter/material.dart";

import "homepage.dart";

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            //logo
            const SizedBox(height: 100),
            Image.asset('assets/images/bike1.png'),

            const SizedBox(height: 100),
            //title
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Buy.',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'Bikes',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  '.Now',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),

            //subtitle
            const SizedBox(height: 30),
            const Text(
              'The best choice for bike-buying',
              style: TextStyle(fontSize: 20),
            ),

            //start now
            const SizedBox(height: 50),

            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage())),
              child: Container(
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

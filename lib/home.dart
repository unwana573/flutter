import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF0D2C6B), // navy blue
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Diagonal stripe accent
                Positioned(
                  left: 40,
                  child: Transform.rotate(
                    angle: 10,
                    child: Container(
                      width: 2,
                      height: 80,
                      color: Colors.white.withValues(alpha: 0.85),
                    ),
                  ),
                ),

                Row(
                  children: [
                    
                  ],
                )
                
              ],
            ),
          ),

          // rest of your Home screen content goes below
        ],
      ),
    );
  }
}
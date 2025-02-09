import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCard extends StatelessWidget {
  final String name;
  final String imagePath;
  const PlantCard({required this.name, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 90),
          const SizedBox(height: 5),
          Text(name, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
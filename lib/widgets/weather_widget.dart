import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherWidget extends StatelessWidget {
  final IconData icon;
  final String temperature;
  const WeatherWidget({required this.icon, required this.temperature, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.green.shade900, size: 30),
          const SizedBox(width: 10),
          Text(temperature, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
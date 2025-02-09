import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthTip extends StatelessWidget {
  final String tip;
  const HealthTip({required this.tip, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
      ),
      child: Row(
        children: [
          const Icon(Icons.eco, color: Colors.green),
          const SizedBox(width: 10),
          Text(tip, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
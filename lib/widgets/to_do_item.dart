import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoItem extends StatelessWidget {
  final String title;
  const ToDoItem({required this.title, super.key});

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
          const Icon(Icons.check_circle, color: Colors.green),
          const SizedBox(width: 10),
          Text(title, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
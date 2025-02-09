import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityItem extends StatelessWidget {
  final String activity;
  final String time;
  const ActivityItem({required this.activity, required this.time, super.key});

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
          const Icon(Icons.history, color: Colors.green),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(activity, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
              Text(time, style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
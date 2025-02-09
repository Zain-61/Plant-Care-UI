import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'widgets/plant_card.dart';
import 'widgets/weather_widget.dart';
import 'widgets/health_tip.dart';
import 'widgets/activity_item.dart';
import 'widgets/to_do_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade700, Colors.green.shade300],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(30),
            ),
            margin: const EdgeInsets.only(top: 118),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(radius: 25, backgroundImage: AssetImage('assets/profile.jpg')),
                      Text('My Plants', style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                      IconButton(icon: const Icon(Icons.notifications, color: Colors.white), onPressed: () {}),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      PlantCard(name: 'Lanwe', imagePath: 'assets/plant1.jpeg'),
                      PlantCard(name: 'Landak', imagePath: 'assets/plant2.jpeg'),
                      PlantCard(name: 'Kecub', imagePath: 'assets/plant3.jpeg'),
                      PlantCard(name: 'Lanwe', imagePath: 'assets/plant1.jpeg'),
                      PlantCard(name: 'Landak', imagePath: 'assets/plant2.jpeg'),
                      PlantCard(name: 'Kecub', imagePath: 'assets/plant3.jpeg'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CircularPercentIndicator(
                  radius: 75.0,
                  lineWidth: 12.0,
                  animation: true,
                  percent: 0.85,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('85%', style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold)),
                      Text('Air Humidity', style: GoogleFonts.poppins(fontSize: 16)),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.green.shade900,
                  backgroundColor: Colors.green.shade200,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sunlight Received", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.green.shade200,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green.shade900),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      WeatherWidget(icon: Icons.wb_sunny, temperature: '28°C'),
                      const SizedBox(width: 10),
                      WeatherWidget(icon: Icons.water_drop, temperature: '60%'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Plant Health Tips", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      HealthTip(tip: "Water your plants early in the morning."),
                      HealthTip(tip: "Ensure proper drainage to avoid root."),
                      HealthTip(tip: "Prune dead leaves to promote growth."),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Recent Activities", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      ActivityItem(activity: "Watered Lanwe", time: "2 hours ago"),
                      ActivityItem(activity: "Checked soil moisture", time: "4 hours ago"),
                      ActivityItem(activity: "Pruned dead leaves", time: "1 day ago"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Today's Tasks", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      ToDoItem(title: "Water the Fern"),
                      ToDoItem(title: "Check soil moisture"),
                      ToDoItem(title: "Prune dead leaves"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade900,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue, 
                  Colors.purple,
                ],
              ),
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.phone_android,
                size: 80,
                color: Colors.white,
              ),

              const SizedBox(height: 16),

              const Text(
                'Tentang Aplikasi',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Profil Mahasiswa',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Versi 1.0.0',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white54,
                ),
              ),

              const SizedBox(height: 24),
              const SizedBox(height: 16),
              const Text(
                'Dibuat oleh:',
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              const Text(
                'Roy Widyadhana Prastowo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'S1 Informatika – Amikom Yogyakarta',
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),

          Positioned(
            top: 48,
            left: 8,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
              tooltip: 'Kembali',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

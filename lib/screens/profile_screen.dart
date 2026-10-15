import 'package:flutter/material.dart';

import '../widgets/profile_photo.dart';
import '../widgets/profile_info.dart';
// Import widget SocialMediaRow yang baru kita buat
import '../widgets/social_media_row.dart';
// Import AboutScreen untuk navigasi ke halaman "Tentang Aplikasi"
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.yellow,
        // actions = daftar widget yang ditampilkan di sisi kanan AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Tentang Aplikasi',
            // Navigator.push = membuka halaman baru di atas halaman saat ini
            onPressed: () {
              Navigator.push(
                context,
                // MaterialPageRoute = cara standar Flutter untuk berpindah halaman
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const ProfilePhoto(radius: 60),
              const SizedBox(height: 24),
              const ProfileInfo(
                name: 'Roy Widyadhana Prastowo',
                nim: '25.11.6571',
                programStudi: 'S1 Informatika',
                email: 'r.widyadha@students.amikom.ac.id',
                lokasi: 'Yogyakarta, Indonesia',
              ),
              const SizedBox(height: 24),
              // Widget SocialMediaRow yang baru kita tambahkan
              // Menampilkan ikon Instagram, LinkedIn, dan GitHub
              const SocialMediaRow(),
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 8),
              // Tombol aksi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                    label: const Text('Bagikan'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

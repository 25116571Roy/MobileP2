import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';    
import '../widgets/profile_info.dart';     
import '../widgets/social_media_row.dart';  
import '../widgets/action_buttons.dart';    
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
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Tentang Aplikasi',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),
                    const ProfileHeader(
                      name: 'Roy Widyadhana Prastowo',
                      nim: '25.11.6571',
                    ),

                    const SizedBox(height: 24),
                    const ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'r.widyadha@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),

                    const SizedBox(height: 24),
                    const SocialMediaRow(),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: const ActionButtons(),
            ),
          ),
        ],
      ),
    );
  }
}

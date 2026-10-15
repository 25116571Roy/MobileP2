import 'package:flutter/material.dart';

import 'info_row.dart';

// ProfileInfo: menampilkan detail informasi mahasiswa
// yaitu program studi, email, dan lokasi
//
// Setelah refactoring Latihan 4:
// - Nama dan NIM sudah dipindahkan ke ProfileHeader
// - ProfileInfo hanya bertanggung jawab untuk baris-baris detail info
class ProfileInfo extends StatelessWidget {
  final String programStudi;
  final String email;
  final String lokasi;

  const ProfileInfo({
    super.key,
    required this.programStudi,
    required this.email,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Garis pemisah antara header dan detail info
        const Divider(),
        const SizedBox(height: 16),

        // Baris info program studi
        InfoRow(icon: Icons.school, label: programStudi),

        // Baris info email
        InfoRow(icon: Icons.email, label: email),

        // Baris info lokasi
        InfoRow(icon: Icons.location_on, label: lokasi),
      ],
    );
  }
}

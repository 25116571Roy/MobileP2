// Import paket Flutter yang berisi widget-widget dasar
import 'package:flutter/material.dart';

// Import ProfilePhoto untuk menampilkan foto profil
import 'profile_photo.dart';

// ProfileHeader: widget yang menampilkan bagian header profil
// yaitu foto bulat + nama + NIM
// Dipisahkan dari ProfileScreen sebagai penerapan prinsip SoC
// (Separation of Concerns) — setiap widget punya tanggung jawab sendiri
class ProfileHeader extends StatelessWidget {
  // Data yang dibutuhkan widget ini dari luar
  final String name; // Nama mahasiswa
  final String nim;  // NIM mahasiswa

  // Constructor — wajib mengisi name dan nim saat pakai widget ini
  const ProfileHeader({
    super.key,
    required this.name,
    required this.nim,
  });

  @override
  Widget build(BuildContext context) {
    // Column untuk menyusun foto, nama, dan NIM secara vertikal
    return Column(
      children: [
        // Foto profil bulat menggunakan widget ProfilePhoto yang sudah ada
        const ProfilePhoto(radius: 60),

        const SizedBox(height: 16), // Jarak antara foto dan nama

        // Nama mahasiswa — teks besar dan tebal
        Text(
          name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 4), // Jarak kecil antara nama dan NIM

        // NIM mahasiswa — teks kecil berwarna abu-abu
        Text(
          'NIM: $nim',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

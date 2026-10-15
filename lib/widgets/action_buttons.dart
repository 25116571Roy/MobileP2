// Import paket Flutter yang berisi widget-widget dasar
import 'package:flutter/material.dart';

// ActionButtons: widget yang menampilkan tombol-tombol aksi profil
// yaitu tombol Edit dan Bagikan
// Dipisahkan dari ProfileScreen sebagai penerapan prinsip SoC
// (Separation of Concerns) — setiap widget punya tanggung jawab sendiri
class ActionButtons extends StatelessWidget {
  // Constructor
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize.min → Column hanya sebesar kontennya
      mainAxisSize: MainAxisSize.min,
      children: [
        // Garis pemisah di atas tombol
        const Divider(),

        const SizedBox(height: 8),

        // Row untuk menyusun dua tombol secara horizontal
        Row(
          // spaceEvenly = jarak antar tombol dan tepi dibuat merata
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Tombol Edit — ikon pensil + label teks
            ElevatedButton.icon(
              onPressed: () {
                // TODO: tambahkan aksi edit di sini
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit'),
            ),

            // Tombol Bagikan — ikon share + label teks
            ElevatedButton.icon(
              onPressed: () {
                // TODO: tambahkan aksi bagikan di sini
              },
              icon: const Icon(Icons.share),
              label: const Text('Bagikan'),
            ),
          ],
        ),
      ],
    );
  }
}

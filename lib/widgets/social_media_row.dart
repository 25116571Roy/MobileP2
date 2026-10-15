import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});
  void _tampilkanSnackBar(BuildContext context, String namaMediaSosial) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda menekan: $namaMediaSosial'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Media Sosial',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.camera_alt),
              color: Colors.purple,
              iconSize: 40,
              tooltip: 'Instagram',
              onPressed: () {
                _tampilkanSnackBar(context, 'Instagram');
              },
            ),

            const SizedBox(width: 16),

            IconButton(
              icon: const Icon(Icons.work),
              color: Colors.blue,
              iconSize: 40,
              tooltip: 'LinkedIn',
              onPressed: () {
                _tampilkanSnackBar(context, 'LinkedIn');
              },
            ),

            const SizedBox(width: 16),
            IconButton(
              icon: const Icon(Icons.code),
              color: Colors.black87,
              iconSize: 40,
              tooltip: 'GitHub',
              onPressed: () {
                _tampilkanSnackBar(context, 'GitHub');
              },
            ),
          ],
        ),
      ],
    );
  }
}

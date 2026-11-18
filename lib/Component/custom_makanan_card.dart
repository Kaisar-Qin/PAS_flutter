import 'package:flutter/material.dart';

class CustomMakananCard extends StatelessWidget {
  final String nama;
  final String harga;
  final double gambar;
  final VoidCallback onTap;

  const CustomMakananCard({
    super.key,
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: const Icon(Icons.image_outlined, size: 40),
        title: Text(nama),
        subtitle: Text("Rp $harga"),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
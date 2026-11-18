import 'package:flutter/material.dart';
import 'package:flutter_kaisar_17/Component/custom_button.dart';
import 'package:flutter_kaisar_17/Controller/transaksi_page_controller.dart';

import 'package:get/get.dart';

class TransaksiPage extends GetView<TransaksiPageController> {
  const TransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final produk = controller.makanan;

    return Scaffold(
      appBar: AppBar(title: Text(produk.namaMakanan)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(produk.gambarMakanan),
            const SizedBox(height: 20),
            Text(
              produk.namaMakanan,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              produk.hargaMakanan.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            Text( produk.deskripsiMakanan),
            const SizedBox(height: 20),
         
          ],
        ),
      ),
      bottomNavigationBar: CustomButton(
        text: "Beli",
        icon: Icons.shopping_cart_outlined,
      ),
    );
  }
}
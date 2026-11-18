import 'package:flutter_kaisar_17/Models/home_model.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController{

  final saldo = 1000000.obs;

  RxList<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Nasi Goreng Spesial", hargaMakanan: 25000, gambarMakanan: "https://awsimages.detik.net.id/community/media/visual/2019/11/29/c1da4697-6737-4e6f-9560-31363968faea.jpeg?w=600&q=90",deskripsiMakanan: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk."),
    MakananModel(namaMakanan: "Ayam Bakar Madu ", hargaMakanan: 30000, gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQopSIlpbzBZ13Bi13v2sYIOpSU6I_BjdcI4_dfBp4-YuYh2tcLFkpC1f4&s=10",deskripsiMakanan: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan."),
    MakananModel(namaMakanan: "Sate Ayam Madura", hargaMakanan: 28000, gambarMakanan: "https://thumbs.tvonenews.com/thumbnail/2023/04/27/644a8e5011e00-nasi-pindang-kerbau-khas-kudus-jadi-buruan-pemudik_1265_711.jpg",deskripsiMakanan: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental."),
    MakananModel(namaMakanan: "Mie Ayam Bakso", hargaMakanan: 20000, gambarMakanan: "https://javanologi.uns.ac.id/wp-content/uploads/sites/26/2023/03/3347.png",deskripsiMakanan: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi."),
    MakananModel(namaMakanan: "Es Teh Manis Jumbo", hargaMakanan: 8000, gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5tlBh3xP0-iPpML0DkI1GBkJ45ZvBzQXNH2V6v2sOdh-oM5kCos1pxqo&s=10",deskripsiMakanan: "Minuman teh melati segar dengan gula asli dan es batu kristal.")
  ].obs;

   String get saldoText => "Saldo: ${formatRupiah(saldo.value)}";

  String formatRupiah(int nilai) {
    final angka = nilai.toString().replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (_) => '.',
    );
    return "Rp $angka";
  }
}
import 'package:flutter_kaisar_17/Models/home_model.dart';
import 'package:get/get.dart';

class TransaksiPageController extends GetxController{
  final MakananModel makanan;
  TransaksiPageController(this.makanan);

  var hasil = 0.0.obs;
  int jumlahMakanan = 1;
  

  int get subtotal => makanan.hargaMakanan * jumlahMakanan;
  int get PPN => subtotal * 5.0 ~/ 100;
  int get totalbayar => subtotal + PPN;
}
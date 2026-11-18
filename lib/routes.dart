import 'package:flutter_kaisar_17/Pages/login_page.dart';
import 'package:flutter_kaisar_17/Pages/menu_drawer_page.dart';
import 'package:flutter_kaisar_17/Pages/transaksi_page.dart';
import 'package:get/get.dart';

class Routes{
  static const String login="/login";
  static const String menu_drawer="/menu_drawer";
  static const String transaksi="/transaksi";

  static final pages=[
    GetPage(name: login, page: ()=>LoginPage()),
    GetPage(name: menu_drawer, page: ()=>MenuDrawerPage()),
    GetPage(name: transaksi, page: ()=>TransaksiPage()),
  ];
}
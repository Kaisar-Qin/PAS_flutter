import 'package:flutter/material.dart';
import 'package:flutter_kaisar_17/Menu/feats_page.dart';
import 'package:flutter_kaisar_17/Menu/home_page.dart';
import 'package:flutter_kaisar_17/Menu/profile_page.dart';
import 'package:get/get.dart';

class MenuDrawerController extends GetxController{
  final RxInt selectedIndex = 0.obs;

  void changePage(int index){
    selectedIndex.value =index;
  }

  List<Widget> listPages=[
    Homepage(),
    FeatsPage(),
    Profilepage()
  ];
} 
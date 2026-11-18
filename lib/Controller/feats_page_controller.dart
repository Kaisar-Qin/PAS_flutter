

import 'package:flutter_kaisar_17/Models/team_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FeatsController extends GetxController {
  var isLoading = false.obs;
  var listModel = Rxn<PremierLeagueModel>();

  late String nama;
  late String stadion;
  late String logo;

  @override
  void onInit() {
    super.onInit();
     final argument = Get.arguments;
    nama = argument["strNama"];
    stadion = argument["strStadium"];
    logo = argument["strBadge"];
    fetchSport();
  }

  Future<void> fetchSport() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/searchteams.php?t=Manchester United",
      );

      final response = await http.get(url);

      isLoading.value = false;
      if (response.statusCode == 200) {
        listModel.value = premierLeagueModelFromJson(response.body);
        final teams = listModel.value?.teams;
        if (teams != null && teams.isNotEmpty) {
          Get.snackbar("Berhasil", "${teams.length} data ditemukan");
        } else {
          Get.snackbar("Gagal", "Data tidak ditemukan");
        }
      } else {
        Get.snackbar("Gagal", "Status: ${response.statusCode}");
      }
    } catch (e) {
      Get.snackbar("gagal", e.toString());
    }
  }
  
}

  import 'package:flutter/material.dart';
import 'package:flutter_kaisar_17/Controller/feats_page_controller.dart';
import 'package:flutter_kaisar_17/Models/team_model.dart';
  import 'package:get/get.dart';

  class FeatsPage extends StatelessWidget {
    FeatsPage ({super.key});

    final controller = Get.put(FeatsController());

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Teams")),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Obx(
            () => Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.listModel.value?.teams.length ?? 0,
                itemBuilder: (context, index) {
                  final teams = controller.listModel.value?.teams[index];
                  return InkWell(
                    child: SizedBox(
                      width: 260,
                      child: Card(
                        elevation: 10,
                        child: ListTile(
                          leading: Image.network(
                            teams["strBadge"] ?? "",
                            width: 40,
                            errorBuilder: (c, e, s) =>
                                const Icon(Icons.sports_soccer),
                          ),
                          title: Text(teams?["strName"] ?? "-"),
                          subtitle: Text(
                            "${teams?["strStadium"] ?? "-"}",
                          ),
                          isThreeLine: true,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
    }
  }

extension on Team? {
  String? operator [](String other) {}
}

import 'package:flutter/material.dart';
import 'package:flutter_kaisar_17/Component/custom_button.dart';
import 'package:flutter_kaisar_17/Component/custom_textfield.dart';
import 'package:flutter_kaisar_17/Controller/login_page_controller.dart';

import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.help_outline, size: 26),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 26),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Log in ",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomTextfield(
                    txtcontroller: controller.txtUsername,
                    myhint: "Input Nama",
                  ),
                  const SizedBox(height: 20),
                  CustomTextfield(
                    txtcontroller: controller.txtPassword,
                    myhint: "Input Password",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Obx(
                      () => controller.isLoading.value?
                      Center(child: CircularProgressIndicator(),)
                       :CustomButton(
                        icon: Icons.person_outline,
                        text: "Login",
                        onPressed: () {
                          controller.login();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

           
          ],
        ),
      ),
    );
  }
}

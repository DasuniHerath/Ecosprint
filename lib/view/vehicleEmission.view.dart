import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_emission/utils/global.colors.dart';
import 'package:vehicle_emission/view/login.view.dart';

class vehicleEmissionView extends StatelessWidget {
  const vehicleEmissionView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(LoginView());
    });
    return Scaffold(
        backgroundColor: GlobalColors.mainColor,
        body: const Center(
          child: Text('Ecosprint',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}

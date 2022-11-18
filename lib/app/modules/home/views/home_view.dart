import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Row(
        children: [
        Expanded(
          flex: 2,
          child: SideBar(),
        ),
        Expanded(
          flex: 15,
          child: Container(
            color: Colors.white,
          ),
        )
      ],
    ));
  }
}


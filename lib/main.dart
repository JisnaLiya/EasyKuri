import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_application_1/view/help_center/controller/controller.dart';
import 'package:flutter_application_1/view/help_center/view/help_center.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    //home: HelpCenter(),
    getPages: [GetPage(name: "/hlepcenter", page: () => HelpCenter(),binding: HelpCenterController())],
    initialRoute: "/hlepcenter",
      
    );
  }
}


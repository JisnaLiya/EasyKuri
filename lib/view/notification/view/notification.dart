import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/notification/controller/controller.dart';
import 'package:flutter_application_1/view/notification/view/widgets/notification_card.dart';
import 'package:get/get.dart';

class Notification extends GetView<NotificationController> {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Text(
                  "12-11-2025",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.readnotifications.length,
                itemBuilder: (BuildContext context, int index) {
                  return NotificationCard(
                    notificationData: controller.readnotifications[index], isRead: false
                  );
                },
              ),
              SizedBox(height: 10),
              Divider(color: Colors.white, thickness: 2),
              SizedBox(height: 10),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.noReadNotifications.length,
                itemBuilder: (BuildContext context, int index) {
                  return NotificationCard(
                    notificationData: controller.noReadNotifications[index], isRead: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

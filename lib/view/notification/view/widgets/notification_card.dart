import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/notification/service/model/notification_model.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key,required this.notificationData, required this.isRead});
  final NotificationModel notificationData;
final bool isRead;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: !isRead ? 1 : 0.5,
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36)),
                    child: Text(
                      notificationData.content,
                      style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),
                    ),
                  ),
    );
              }
  }

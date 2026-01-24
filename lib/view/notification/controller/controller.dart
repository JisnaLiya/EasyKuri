import 'package:flutter_application_1/view/notification/service/model/notification_model.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController implements Bindings{
  final List<NotificationModel> readnotifications = [
    NotificationModel(
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
    ),
    NotificationModel(
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
    ),
    NotificationModel(
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
    ),
    ];
    final List<NotificationModel> noReadNotifications = [ 
      NotificationModel(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore "),
      NotificationModel(
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
    ),
    NotificationModel(
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
    ),
    NotificationModel(
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
    ),
    ];
    
      @override
      void dependencies() {
    Get.put(NotificationController());
      }
}
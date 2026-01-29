import 'package:flutter_application_1/view/help_center/service/model/my_chat_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HelpCenterController extends GetxController implements Bindings{

  final List <MyChatModel> myChatModel = [
    MyChatModel(
    chat : "Hi Mathew, I'm NOVAS, Your customer support bot.How may i help you today?"
  ),
  MyChatModel(
    chat: "Hi Mathew, I'm NOVAS, Your customer support bot.How may i help you today?"
  ),
  ];
  @override
  void dependencies() {
    Get.put(HelpCenterController());
  
  }
}
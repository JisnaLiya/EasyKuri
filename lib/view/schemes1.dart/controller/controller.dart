import 'package:flutter_application_1/view/schemes1.dart/service/model/purchase_plan_model.dart';
import 'package:flutter_application_1/view/schemes1.dart/service/model/schemes_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SchemesController extends GetxController implements Bindings{
  final PurchasePlanModel purchasePlanModel = PurchasePlanModel(
    imageUrl : "https://images.pexels.com/photos/34910090/pexels-photo-34910090.jpeg",
    title : "0% Purchase Plan",
    subtitle : "(11 Installments)",
  );
  final SchemesModel schemesDetailModel = SchemesModel(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam, quis nostrud.", 
  title: "Terms and conditions", 
  subtitle1: "1. Lorem ipsum dolor", 
  content1: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam, quis nostrud.", 
  subtitle2: "2. Lorem ipsum dolor", 
  content2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam, quis nostrud.", 
  subtitle3: "3. Lorem ipsum dolor", 
  content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam, quis nostrud.", 
  subtitle4: "4. Lorem ipsum dolor", 
  content4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam, quis nostrud.") ;



  
  @override
  void dependencies() {
    Get.put(SchemesController());
  
  }

}
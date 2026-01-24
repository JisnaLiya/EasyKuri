import 'package:flutter_application_1/view/easy_scheme/service/deposit_detail_model.dart';
import 'package:flutter_application_1/view/easy_scheme/service/easy_scheme_model.dart';
import 'package:get/get.dart';

class EasySchemeController extends GetxController implements Bindings{

  final EasySchemeModel easySchemeDetailModel = EasySchemeModel(
    imageUrl: "https://images.pexels.com/photos/35074450/pexels-photo-35074450.jpeg",
    title: "0% Purchase Plan",
    content: "(11 Installments)",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. ",
    depositAmount: "₹  16,000",
    gold: "1.4 g",
    
    items:  [
    EasyDepositDetailModel(id: 1, date: "15 April 2025", amount: "₹ 3,200",gram: "0.2g"),
    EasyDepositDetailModel(id: 2, date: "15 April 2025", amount: "₹ 5,200",gram: "0.1g"),
    EasyDepositDetailModel(id: 3, date: "15 April 2025", amount: "₹ 3,200",gram: "0.3g"),
    EasyDepositDetailModel(id: 4, date: "15 April 2025", amount: "₹ 5,200",gram: "0.3g"),
    EasyDepositDetailModel(id: 5, date: "15 April 2025", amount: "₹ 3,200",gram: "0.2g"),
  ],
  );


  
  @override
  void dependencies() {
    Get.put(EasySchemeController());
  }
}
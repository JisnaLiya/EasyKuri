import 'package:flutter_application_1/view/fixed_scheme/model/fixed_scheme_model.dart';
import 'package:flutter_application_1/view/fixed_scheme/service/model/deposit_model.dart';
import 'package:get/get.dart';

class FixedSchemeController extends GetxController implements Bindings{

  final EasySchemeModel fixedSchemeDetailModel = EasySchemeModel(
    imageUrl: "https://images.pexels.com/photos/35074450/pexels-photo-35074450.jpeg",
    title: "0% Purchase Plan",
    content: "(11 Installments)",
    decoration: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. ",
    depositAmount: "₹  16,000",
    schemeAmount: "₹  35,200",
    items:  [
    DepositDetailModel(id: 1, date: "16 April 2025", amount: "₹  35,200"),
    DepositDetailModel(id: 2, date: "16 April 2025", amount: "₹  35,200"),
    DepositDetailModel(id: 3, date: "16 April 2025", amount: "₹  35,200"),
    DepositDetailModel(id: 4, date: "16 April 2025", amount: "₹  35,200"),
    DepositDetailModel(id: 5, date: "16 April 2025", amount: "₹  35,200"),
  ],
  );


  
  @override
  void dependencies() {
    Get.put(FixedSchemeController());
  }
}
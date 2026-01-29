import 'package:flutter_application_1/view/gold_offers/service/model/gold_offer_model.dart';
import 'package:flutter_application_1/view/gold_offers/service/model/product_description_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class GoldOffersController extends GetxController implements Bindings{ 
  final ProductDescriptionModel productDescriptionModel = ProductDescriptionModel(
    title1 : "Product Description",
    description1 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. ",
    title :"Terms and Conditions",
    title2 : "Summary",
    description2 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. ",
    title3 : "Terms",
    description3 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. t velit esse cillum dolore eu fugiat nulla pariatur. ",
    title4 : "Conditions",
    description4 : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",

  );
  final GoldOfferModel goldOfferModel = GoldOfferModel(
    imageUrl: "https://images.pexels.com/photos/33947745/pexels-photo-33947745.jpeg",
    title1: "Bangle Size : 2.2",
    title2: "Metal Color : Yellow",
    title3: "Gold : 22k",
    offerprice: "₹ 200 Off",
    title4: "JEEVITHA ANTIQUE",
    title5: "BANGLE",
    subtitle: "Weight (Gm) :8",
    price: "₹ 77,800",
  );
  @override
  void dependencies() {
    Get.put(GoldOffersController());
  
  }


}
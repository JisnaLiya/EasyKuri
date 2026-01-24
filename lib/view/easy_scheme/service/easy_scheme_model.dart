import 'package:flutter_application_1/view/easy_scheme/service/deposit_detail_model.dart';


class EasySchemeModel {
  EasySchemeModel({
    required this.imageUrl,
    required this.title,
    required this.content,
    required this.description,
    required this.depositAmount,
    required this.gold,
    
    required this.items,
  });
  final String imageUrl;
  final String title;
  final String content;
  final String description;
  final String depositAmount;
  final String gold;
 
  final List<EasyDepositDetailModel> items;
}




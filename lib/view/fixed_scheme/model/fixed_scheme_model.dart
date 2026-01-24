import 'package:flutter_application_1/view/fixed_scheme/service/model/deposit_model.dart';


class EasySchemeModel {
  EasySchemeModel({
    required this.imageUrl,
    required this.title,
    required this.content,
    required this.decoration,
    required this.depositAmount,
    required this.schemeAmount,
    required this.items,
  });
  final String imageUrl;
  final String title;
  final String content;
  final String decoration;
  final String depositAmount;
  final String schemeAmount;
  final List<DepositDetailModel> items;
}




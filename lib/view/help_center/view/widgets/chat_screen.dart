import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/help_center/controller/controller.dart';
import 'package:flutter_application_1/view/help_center/service/model/my_chat_model.dart';
import 'package:get/get.dart';

class ChatScreen extends GetView<HelpCenterController> {
  const ChatScreen({super.key,required this.myChatModel,required this.isMe,});
  final bool isMe;
  final MyChatModel myChatModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container( 
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(12),
        width: 293,
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(20),
          color: isMe? Colors.blue: Colors.white,
        ),
        child: Text(myChatModel.chat,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: isMe ? Colors.white : Colors.black),),
      ),
    );
  }
}
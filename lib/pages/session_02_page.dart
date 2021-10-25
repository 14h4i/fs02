import 'package:flutter/material.dart';
import 'package:fs02/values/app_color.dart';
import 'package:fs02/values/app_image.dart';
import 'package:fs02/widgets/message_widget.dart';
import 'package:fs02/widgets/avatar_message_widget.dart';
import 'package:fs02/widgets/user_message_widget.dart';

class Session02Page extends StatelessWidget {
  const Session02Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        title: const Text('Session 02'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            UserMessageWidget(
              avatar: AssetImage(AppImage.ironman),
              name: 'Iron Man',
              message: 'I am Iron Man!',
              time: '08:58PM',
              numberMessage: 3,
              fontSizeName: 17,
              fontSizeTime: 13,
              height: 60,
            ),
            UserMessageWidget(
              avatar: AssetImage(AppImage.ironman),
              name: 'Iron Man',
              message: 'I am Iron Man!',
              time: '08:58PM',
              numberMessage: 0,
              fontSizeName: 17,
              fontSizeTime: 13,
              height: 60,
            ),
            UserMessageWidget(
              avatar: AssetImage(AppImage.ironman),
              name: 'Iron Man',
              message: 'I am Iron Man!',
              time: '08:58PM',
              numberMessage: 1,
              fontSizeName: 17,
              fontSizeTime: 13,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

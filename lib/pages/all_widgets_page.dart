import 'package:flutter/material.dart';
import 'package:fs02/values/app_color.dart';
import 'package:fs02/values/app_image.dart';
import 'package:fs02/widgets/avatar_online_widget.dart';
import 'package:fs02/widgets/message_widget.dart';
import 'package:fs02/widgets/status_widget.dart';
import 'package:fs02/widgets/avatar_message_widget.dart';
import 'package:fs02/widgets/user_message_widget.dart';
import 'package:fs02/widgets/user_online_widget.dart';

class AllWidgetsPage extends StatelessWidget {
  const AllWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        title: const Text('All Widgets'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(height: 10),
              StatusWidget(status: Status.offline),
              SizedBox(height: 10),
              StatusWidget(status: Status.online),
              SizedBox(height: 10),
              StatusWidget(status: Status.busy),
              SizedBox(height: 10),
              StatusWidget(
                status: Status.hasMessage,
                numberMessage: 3,
              ),
              SizedBox(height: 10),
              AvatarOnlineWidget(
                radius: 30,
                image: AssetImage(
                  AppImage.ironman,
                ),
              ),
              SizedBox(height: 10),
              UserOnlineWidget(
                avatar: AssetImage(AppImage.ironman),
                title: 'Iron Man',
                radiusAvatar: 30,
                fontSizeTitle: 12,
              ),
              SizedBox(height: 10),
              AvatarMessageWidget(
                avatar: AssetImage(AppImage.ironman),
                numberMessage: 3,
                radiusAvatar: 30,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: MessageWidget(
                  name: 'Iron Man',
                  message: 'I am Iron Man!',
                  time: '08:58PM',
                  fontSize: 17,
                  fontSizeTime: 13,
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}

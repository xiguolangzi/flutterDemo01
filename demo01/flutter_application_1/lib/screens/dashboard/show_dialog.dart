import 'package:flutter/material.dart';

class ShowDialogDemo<widget> {
  String settingTitle;
  String settingContent;

  ShowDialogDemo(BuildContext context,
      {this.settingTitle = "温馨提示：", required this.settingContent}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(settingTitle),
          content: Text(settingContent),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("确认"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("取消"),
            )
          ],
        );
      },
    );
  }
}

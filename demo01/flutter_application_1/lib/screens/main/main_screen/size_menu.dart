import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import '../../../responsive.dart';
import '../../dashboard/show_dialog.dart';
import 'drawer_listTitle.dart';

class SizeMeun extends StatelessWidget {
  const SizeMeun({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // 可以滚动
        child: Column(
          children: [
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.arrow_back_ios),
            // ),
            // DrawerHeader(
            //   child: Image.asset("assets/images/logo.png"),
            // ),
            Stack(
              children: [
                DrawerHeader(
                  child: Image.asset("assets/images/logo.png"),
                ),
                if (!Responsive.isDeskTop(context))
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  )
              ],
            ),
            DrawerListTitle(
              title: "Dashbord",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Dashbord 界面维护中");
              },
            ),
            DrawerListTitle(
              title: "Transaction",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Transaction 界面维护中");
              },
            ),
            DrawerListTitle(
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Task 界面维护中");
              },
            ),
            DrawerListTitle(
              title: "Documents",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Documents 界面维护中");
              },
            ),
            DrawerListTitle(
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Store 界面维护中");
              },
            ),
            DrawerListTitle(
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Notification 界面维护中");
              },
            ),
            DrawerListTitle(
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Profile 界面维护中");
              },
            ),
            DrawerListTitle(
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {
                ShowDialogDemo(context, settingContent: "Settings 界面维护中");
              },
            ),
          ],
        ),
      ),
    );
  }
}

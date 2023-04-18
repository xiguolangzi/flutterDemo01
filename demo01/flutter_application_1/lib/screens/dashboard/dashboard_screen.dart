import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'search_field.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "dashboard",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer(),
                const Expanded(
                  child: SearchField(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

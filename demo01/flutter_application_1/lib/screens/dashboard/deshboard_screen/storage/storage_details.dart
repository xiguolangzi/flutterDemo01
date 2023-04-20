import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Storage Details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Chart(),
        StorageInfoCard(
          title: "Documents Files",
          svgSrc: "assets/icons/Documents.svg",
          amountOfFiles: "1.3GB",
          numOfFlies: 1238,
        ),
        StorageInfoCard(
          title: "Media Files",
          svgSrc: "assets/icons/media.svg",
          amountOfFiles: "1.5GB",
          numOfFlies: 1238,
        ),
        StorageInfoCard(
          title: "Other Files",
          svgSrc: "assets/icons/folder.svg",
          amountOfFiles: "1.3GB",
          numOfFlies: 1238,
        ),
        StorageInfoCard(
          title: "Unknow Files",
          svgSrc: "assets/icons/unknown.svg",
          amountOfFiles: "1.5GB",
          numOfFlies: 1238,
        ),
      ],
    );
  }
}

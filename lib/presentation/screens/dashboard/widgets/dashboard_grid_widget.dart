import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/core/colors/dashboard_theme_extras.dart';

import '../../../../core/constants/assets_base_paths.dart';
import '../../../../core/constants/font_weight.dart';
import '../../../../data/models/home_grid_data_model.dart';

class DashboardGridWidget extends StatelessWidget {

  final gridItems = [
    HomeGridDataModel(title: "Chat", svg: "chat.svg"),
    HomeGridDataModel(title: "Home", svg: "home.svg"),
    HomeGridDataModel(title: "Camera", svg: "camera.svg"),
    HomeGridDataModel(title: "Vehicle", svg: "vehicle.svg"),
  ];

  DashboardGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).gridContainerBackgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemBuilder: (context, index) {
          return _gridWidget(context, gridItems[index]);
        },
        itemCount: gridItems.length,
      ),
    );
  }
}

Widget _gridWidget(BuildContext context, HomeGridDataModel homeGridDataModel) {
  return Card(
    color: Theme.of(context).gridCardBackgroundColor,
    elevation: 5,
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "$svgAssetsBasePath/${homeGridDataModel.svg}",
            color: Theme.of(context).gridCardIconColor,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            homeGridDataModel.title,
            style: TextStyle(
                color: Theme.of(context).gridCardTextColor, fontWeight: medium, fontSize: 14),
          )
        ],
      ),
    ),
  );
}
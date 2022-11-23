import 'package:flutter/material.dart';
import 'package:untitled/core/colors/dashboard_theme_extras.dart';

import '../../../../core/constants/assets_base_paths.dart';
import '../../../../core/constants/font_weight.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 16,
        ),
        Image.asset("$pngAssetsBasePath/logo.png"),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Icon(
              Icons.menu,
              color: Theme.of(context).hamburgerIconColor,
            ),
            const Spacer(),
            Text(
              "Angelina",
              style: TextStyle(
                  color: Theme.of(context).userNameTextColor,
                  fontWeight: semiBold,
                  fontSize: 19),
            ),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Theme.of(context).userProfileImageBackgroundColor,
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

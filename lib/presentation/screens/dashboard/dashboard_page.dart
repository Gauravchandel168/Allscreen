import 'package:flutter/material.dart';
import 'package:untitled/core/colors/dashboard_theme_extras.dart';
import 'package:untitled/presentation/screens/dashboard/widgets/dashboard_grid_widget.dart';
import 'package:untitled/presentation/screens/dashboard/widgets/dashboard_header_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).headerBackgroundColor,
      child: SafeArea(
        child: Column(children: [
          const DashboardHeaderWidget(),
          Expanded(child: DashboardGridWidget()),
        ]),
      ),
    );
  }
}

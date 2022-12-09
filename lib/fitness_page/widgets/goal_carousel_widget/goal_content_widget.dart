import 'package:fitness_app_flutter/fitness_page/controller/goal_item.dart';
import 'package:flutter/material.dart';

import 'goal_time_calories_container_widget.dart';
import 'goal_image_widget.dart';
import 'goal_title_description_widget.dart';

class GoalContentWidget extends StatelessWidget {
  const GoalContentWidget({Key? key, required this.goal}) : super(key: key);

  final GoalItem goal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GoalImageWidget(cover: goal.cover),
        GoalTitleDescriptionWidget(title: goal.title, subTitle: goal.subTitle),
        GoalTimeCaloriesContainerWidget(caloriesCount: goal.caloriesCount, durationSeconds: goal.durationSeconds),
      ],
    );
  }
}

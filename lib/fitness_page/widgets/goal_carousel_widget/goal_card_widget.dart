import 'package:fitness_app_flutter/fitness_page/controller/goal_item.dart';
import 'package:flutter/material.dart';

import '../../../../resources/custom_colors.dart';
import 'goal_button_widget.dart';
import 'goal_content_widget.dart';

class GoalCardWidget extends StatelessWidget {
  const GoalCardWidget({Key? key, required this.goal}) : super(key: key);

  final GoalItem goal;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        //width: 310,
        height: 281,
        decoration: BoxDecoration(
          color: CustomColors.white,
          //border: Border.all(color: Colors.green,),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: Stack(
            children: [
              GoalContentWidget(goal: goal),
              const GoalButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


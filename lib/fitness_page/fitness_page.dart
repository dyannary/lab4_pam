import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../resources/custom_colors.dart';
import '../../resources/strings.dart';
import 'controller/fitness_controller.dart';
import 'widgets/daily_exercise_widget/daily_exercises_list.dart';
import 'widgets/goal_carousel_widget/goal_carousel_widget.dart';
import 'widgets/header_widget.dart';

class _FitnessPageState extends State<FitnessPage> {

  @override
  void initState() {
    Get.lazyPut(() => HomeController());
    HomeController controller = Get.find();
    controller.readJsonFile();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    HomeController controller = Get.find();

    final double statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return Scaffold(
        body: Container(
          color: CustomColors.cultured,

          child: Column(
            children: [

              SizedBox(height: statusBarHeight),

              const HeaderWidget(title: Strings.startNewGoal),

              Obx( () => controller.goalItems.isNotEmpty
                  ? GoalCarouselWidget(goals: controller.goalItems)
                  : const Center(child: CircularProgressIndicator(),),
              ),

              const HeaderWidget(title: Strings.dailyTask),

              Obx( () => controller.exerciseItems.isNotEmpty
                  ? DailyExercisesList(exercises: controller.exerciseItems)
                  : const Center(child: CircularProgressIndicator(),),
              ),

            ],
          ),
        )
    );
  }
}

class FitnessPage extends StatefulWidget {
  const FitnessPage({super.key});

  @override
  State<FitnessPage> createState() => _FitnessPageState();

}

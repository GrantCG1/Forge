import 'package:flutter/material.dart';

import 'today_sample_data.dart' as sample_data;
import 'widgets/ask_forge_fab.dart';
import 'widgets/this_week_section.dart';
import 'widgets/today_plan_section.dart';
import 'widgets/upcoming_section.dart';
import 'widgets/welcome_section.dart';

/// The Today feature's entry screen.
///
/// This is the default landing destination and displays the Forge brand
/// title. It presents a calm, static daily overview — a greeting, Today's
/// Plan, the current week and upcoming items — with no business logic,
/// networking or persistence. The Meal, Activity and Recommendation
/// objects rendered here come from [sample_data] until a real
/// Application/Decision layer can supply them.
class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forge')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 96),
          children: [
            const WelcomeSection(),
            const SizedBox(height: 32),
            const TodayPlanSection(
              breakfast: sample_data.breakfastMeal,
              lunch: sample_data.lunchMeal,
              dinner: sample_data.dinnerMeal,
              activity: sample_data.todaysActivity,
            ),
            const SizedBox(height: 32),
            const ThisWeekSection(),
            const SizedBox(height: 32),
            const UpcomingSection(
              recommendations: sample_data.upcomingRecommendations,
            ),
          ],
        ),
      ),
      floatingActionButton: const AskForgeFab(),
    );
  }
}

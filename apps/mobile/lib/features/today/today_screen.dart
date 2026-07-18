import 'package:flutter/material.dart';

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
/// networking or persistence. Content is placeholder until the Decision
/// Engine and supporting application services exist.
class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forge')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 96),
          children: const [
            WelcomeSection(),
            SizedBox(height: 32),
            TodayPlanSection(),
            SizedBox(height: 32),
            ThisWeekSection(),
            SizedBox(height: 32),
            UpcomingSection(),
          ],
        ),
      ),
      floatingActionButton: const AskForgeFab(),
    );
  }
}

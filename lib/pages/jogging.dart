import 'package:flutter/material.dart';
import 'package:well_me/styles/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:well_me/widget/bottomNavbar.dart';

class JoggingPage extends StatefulWidget {
  const JoggingPage({super.key});

  @override
  State<JoggingPage> createState() => _JoggingPageState();
}

class _JoggingPageState extends State<JoggingPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right:20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),

            // CONTAINER REMINDER
            Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.reminderBox,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.all(5)),
                      Text(
                        "Reminder",
                        style: TextStyles.reminder,
                      ),
                      Text(
                        "It's your time to move!",
                        style: TextStyles.body,
                      ),
                      Text(
                        "13.00 - 15.00",
                        style: TextStyles.time,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 71,
                  ),
                  const Icon(
                    Icons.alarm,
                    size: 75,
                    color: Colors.white,
                  )
                ],
                )
          ),
          const SizedBox(
            height: 20,
          ),
          ],
        ),
      ),
    );
  }
}

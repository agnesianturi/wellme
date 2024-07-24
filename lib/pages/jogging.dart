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

          // CONTAINER WALK NOW
          Container(
            padding: EdgeInsets.only(top:15),
            width: double.maxFinite,
            height: 170,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Be ACTIVE",
                  style: TextStyles.body,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Take a walk, enjoy the nature, get a healthy body"
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  child: const Text("Start Now"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.background,
                    disabledIconColor: Colors.black,
                    elevation: 0,
                  ),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // CONTAINER INFORMATION
          Container(
            padding: EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.informationBox,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.run_circle,
                  size: 75,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "Jogging with Freddy"
                    ),
                    Text(
                      "13.6 km"
                    ),
                    Text(
                      "230 kcal"
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          // CONTAINER DETAIL 1
          Container(
            padding: EdgeInsets.only(left:20),
            width: double.maxFinite,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.detailBox,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You burned calories of",
                    ),
                    Text(
                      "210 kcal",
                    ),
                    Text(
                      "It's equal to one grilled chicken breast!",
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}

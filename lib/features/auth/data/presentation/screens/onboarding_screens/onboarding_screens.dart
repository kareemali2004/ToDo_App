import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/features/auth/data/models/onboarding_model.dart';
import 'package:to_do_app/features/task/screens/home.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SafeArea(
        child: Scaffold(
          //   backgroundColor: AppColors.background,
          body: PageView.builder(
            itemCount: 3,
            controller: controller,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  //skip
                  SizedBox(
                    height: 14,
                  ),

                  TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: index != 2
                        ? Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AppStrings.skip,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          )
                        : Container(),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  //image
                  Image.asset(onBoardngModel.onBoardingScreen[index].imgbath),
                  SizedBox(
                    height: 16,
                  ),
                  //dots
                  SmoothPageIndicator(
                      controller: controller, // PageController
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: AppColors.burblebutton,
                        dotHeight: 10,
                        spacing: 8,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                  SizedBox(
                    height: 50,
                  ),
                  //titles

                  Text(
                    onBoardngModel.onBoardingScreen[index].title,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  //subtitle

                  Text(
                    onBoardngModel.onBoardingScreen[index].subtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(
                    height: 107,
                  ),
                  //buttons
                  Row(children: [
                    index != 0
                        ? TextButton(
                            onPressed: () {
                              controller.previousPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.fastLinearToSlowEaseIn);
                            },
                            child: Text(AppStrings.back,
                                style:
                                    Theme.of(context).textTheme.displaySmall))
                        : Container(),
                    Spacer(),
                    index != 2
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4))),
                            onPressed: () {
                              controller.nextPage(
                                  duration: Duration(milliseconds: 1000),
                                  curve: Curves.fastLinearToSlowEaseIn);
                            },
                            child: Text(AppStrings.next),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.burblebutton,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Text(AppStrings.getStarted)),
                  ])
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

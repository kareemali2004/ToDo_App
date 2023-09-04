import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/core/utils/app_strings.dart';

class onBoardngModel {
  final String imgbath;
  final String title;
  final String subtitle;
  onBoardngModel(
      {required this.imgbath, required this.title, required this.subtitle});
  static List<onBoardngModel> onBoardingScreen = [
    onBoardngModel(
        imgbath: AppPhotos.on1,
        title: AppStrings.firstMsgOne,
        subtitle: AppStrings.firstMsgTwo),
    onBoardngModel(
        imgbath: AppPhotos.on2,
        title: AppStrings.secondMsgOne,
        subtitle: AppStrings.secondMsgtwo),
    onBoardngModel(
        imgbath: AppPhotos.on3,
        title: AppStrings.thirdMsgOne,
        subtitle: AppStrings.thirdMsgTwo),
  ];
}

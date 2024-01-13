import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:get/get.dart';
import '../../models/onbording_model.dart';

List<OnBordingModel> onbordingData = [
  OnBordingModel(
    title: "2".tr,
    imageUrl: AppImageAsset.onBordingImage1,
    body:
        "We Have a 100k product , Choose \n Your Product From Our E- \n commerce shop",
  ),
  OnBordingModel(
    title: "4".tr,
    imageUrl: AppImageAsset.onBordingImage2,
    body:
        "Easy Checkout & Safe Payment \n method. Trusted by our Customers \n from all over the world",
  ),
  const OnBordingModel(
    title: "Track Your Order",
    imageUrl: AppImageAsset.onBordingImage3,
    body:
        "Best Tracker has been Used for \n  Track your order. Youll know where \n your product is at the moment",
  ),
  const OnBordingModel(
    title: "Fast Delivery",
    imageUrl: AppImageAsset.onBordingImage4,
    body:
        "Reliable And Fast Delivery. We \n Deliver your product the fastest \n way possible",
  ),
];

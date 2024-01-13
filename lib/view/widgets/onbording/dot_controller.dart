import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/color.dart';
import '../../../data/data_source/static/onbording_data.dart';
import '../../../provider/onbording_provider/onbording_provider.dart';

class DotController extends StatelessWidget {
  const DotController({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnbordingProviderImp>(
      builder: (context, onborderController, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //تم استخدام الثلاث نقاط لوضع المصفوفه بداخل الصف
            ...List.generate(
              onbordingData.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                width: onborderController.currentPage == index ? 20 : 5,
                height: 6,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:ecommerce/provider/onbording_provider/onbording_provider.dart';
import 'package:flutter/Material.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';
import '../../../data/data_source/static/onbording_data.dart';

class OnbordingSliderPageView extends StatelessWidget {
  const OnbordingSliderPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<OnbordingProviderImp>(
      builder: (context, onbordingProvider, child) {
        return PageView.builder(
          controller: onbordingProvider.pageController,
          onPageChanged: (value) {
            onbordingProvider.onPageChanged(value);
            print("$value");
          },
          itemCount: onbordingData.length,
          itemBuilder: (context, i) => Column(
            children: [
              //const SizedBox(height: 80),
              Text(
                onbordingData[i].title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 80),
              Image.asset(
                onbordingData[i].imageUrl,
                //اجعلى عرض الشاشه هو نفس الطول مقسم على اثنان
                height: Get.width / 1.5,
                //width: 200,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 80),
              Container(
                //color: Colors.grey,
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  onbordingData[i].body,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

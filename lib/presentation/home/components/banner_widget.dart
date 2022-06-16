import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home.controller.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.put(HomeController());

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Container(
              height: 140,
              width: double.infinity,
              color: Colors.white,
              child: PageView.builder(
                  itemCount: homeC.bannerImg.length,
                  itemBuilder: (BuildContext context, int idx) {
                    return Image.network(homeC.bannerImg[idx] as String);
                  },
                  onPageChanged: (int value) {
                    homeC.bannerScrollPosition.value = value.toDouble();
                  }),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: Get.width,
                child: Obx(
                  () => DotsIndicator(
                    dotsCount: 5,
                    position: homeC.bannerScrollPosition.value,
                    decorator: DotsDecorator(
                      spacing: const EdgeInsets.all(2.0),
                      activeSize: const Size(12, 6),
                      size: const Size.square(6.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/presentation/home/controllers/home.controller.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.put(HomeController());

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Container(
              height: 140,
              width: double.infinity,
              color: Colors.white,
              child: PageView(
                onPageChanged: ((value) =>
                    homeC.scrollPosition.value = value.toDouble()),
                children: const [
                  Center(
                    child: Text(
                      "Page 1",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Page 2",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Page 3",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Page 4",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Page 5",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          child: Row(
            children: [
              SizedBox(
                width: Get.width,
                child: Obx(
                  () => DotsIndicator(
                    dotsCount: 5,
                    position: homeC.scrollPosition.value,
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

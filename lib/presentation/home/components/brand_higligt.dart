import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home.controller.dart';

class BrandHiglight extends StatelessWidget {
  const BrandHiglight({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.put(HomeController());

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 18.0),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Marques mise en avant',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 166,
            width: Get.width,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                PageView(
                  onPageChanged: (int value) =>
                      homeC.brandScrollPosition.value = value.toDouble(),
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Container(
                                    height: 100,
                                    color: Colors.deepOrange,
                                    child: const Center(
                                      child: Text(
                                        'Youtube AD videos\nAbout brands',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Colors.orangeAccent,
                                          height: 50.0,
                                          child: const Center(
                                            child: Text(
                                              'AD',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 0, 8, 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Colors.orangeAccent,
                                          height: 50.0,
                                          child: const Center(
                                            child: Text(
                                              'AD',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Container(
                                height: 160,
                                color: Colors.greenAccent,
                                child: const Center(
                                  child: Text(
                                    'AD',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Container(
                                    height: 100,
                                    color: Colors.deepOrange,
                                    child: const Center(
                                      child: Text(
                                        'Youtube AD videos\nAbout brands',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Colors.orangeAccent,
                                          height: 50.0,
                                          child: const Center(
                                            child: Text(
                                              'AD',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 0, 8, 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Colors.orangeAccent,
                                          height: 50.0,
                                          child: const Center(
                                            child: Text(
                                              'AD',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Container(
                                height: 160,
                                color: Colors.greenAccent,
                                child: const Center(
                                  child: Text(
                                    'AD',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Container(
                                    height: 100,
                                    color: Colors.deepOrange,
                                    child: const Center(
                                      child: Text(
                                        'Youtube AD videos\nAbout brands',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Colors.orangeAccent,
                                          height: 50.0,
                                          child: const Center(
                                            child: Text(
                                              'AD',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 0, 8, 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Colors.orangeAccent,
                                          height: 50.0,
                                          child: const Center(
                                            child: Text(
                                              'AD',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Container(
                                height: 160,
                                color: Colors.greenAccent,
                                child: const Center(
                                  child: Text(
                                    'AD',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 10.0,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: Get.width,
                        child: Obx(
                          () => DotsIndicator(
                            dotsCount: 3,
                            position: homeC.brandScrollPosition.value,
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
            ),
          )
        ],
      ),
    );
  }
}

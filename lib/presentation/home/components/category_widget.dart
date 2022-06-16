import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../controllers/home.controller.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.put(HomeController());

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 18.0),
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Vos gouts en boutique',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              height: 40,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homeC.categoryLabel.length,
                      itemBuilder: (BuildContext context, int idx) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Obx(
                            () => ActionChip(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor:
                                  homeC.currentCategory.value == idx
                                      ? Colors.blue.shade900
                                      : Colors.redAccent,
                              label: Text(
                                homeC.categoryLabel[idx],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: homeC.currentCategory.value == idx
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              onPressed: () {
                                homeC.currentCategory.value = idx;
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // show all the category
                    },
                    icon: const Icon(IconlyBold.arrow_down),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

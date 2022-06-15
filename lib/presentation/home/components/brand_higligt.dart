import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandHiglight extends StatelessWidget {
  const BrandHiglight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Marques mise en avant",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 170,
            width: Get.width,
            color: Colors.white,
            child: PageView(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 4, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Container(
                                height: 100,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                  child: Container(
                                    color: Colors.orangeAccent,
                                    height: 50.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 0, 8, 8),
                                  child: Container(
                                    color: Colors.orangeAccent,
                                    height: 50.0,
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
                        child: Container(
                          height: 160,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

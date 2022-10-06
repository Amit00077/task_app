import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_app/utils/dimention.dart';
import 'package:task_app/widgets/bigtext.dart';

class AppBar1 extends StatefulWidget {
  const AppBar1({super.key});

  @override
  State<AppBar1> createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Container(
                color: Colors.grey.shade900,
                // margin: EdgeInsets.only(bottom: Dimentions.height15),
                padding: EdgeInsets.only(
                    top: Dimentions.height45,
                    left: Dimentions.width20,
                    right: Dimentions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: BigText(
                        text: "Explore",
                        color: Colors.white,
                        size: Dimentions.size24,
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: Dimentions.width30),
                      child: Row(
                        children: [
                          Container(
                            width: Dimentions.width45 * 2.2,
                            height: Dimentions.height20 * 3,
                            color: Colors.grey.shade900,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: Dimentions.width20*2,
                                  height: Dimentions.height20*2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimentions.height45),
                                    color: Colors.purple.shade900,
                                  ),
                                  child: Icon(
                                    Icons.arrow_upward_outlined,
                                    color: Colors.white,
                                    size: Dimentions.size24,
                                  ),
                                ),
                                Container(
                                  width: Dimentions.width20*2,
                                  height: Dimentions.height20*2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimentions.height45),
                                    color: Colors.purple.shade900,
                                  ),
                                  child: Icon(
                                    Icons.shopping_cart_rounded,
                                    color: Colors.white,
                                    size: Dimentions.size24,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          );
    
  }
}
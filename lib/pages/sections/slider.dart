import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_app/pages/sections/app_slider2.dart';
import 'package:task_app/utils/colors.dart';
import 'package:task_app/utils/dimention.dart';
import 'package:task_app/widgets/bigtext.dart';
import 'package:task_app/widgets/small_test.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({super.key});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  TextEditingController nameController = new TextEditingController();

  PageController pageController = PageController(viewportFraction: 1);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimentions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1
        Container(
          padding: EdgeInsets.only(
              left: Dimentions.width15, right: Dimentions.width15),
          margin: EdgeInsets.only(
              left: Dimentions.width10,
              right: Dimentions.width10,
              top: Dimentions.height10),
          height: Dimentions.height45,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 3, 16, 37),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(33, 62, 111, 1),
                    spreadRadius: Dimentions.height10 / 5),
              ]),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Dimentions.height10 * 3,
                  width: Dimentions.height10 * 3,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimentions.height10 * 5),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/c.jpg"),
                    ),
                  ),
                  margin: EdgeInsets.only(right: Dimentions.height10),
                ),
                BigText(
                  text: "Play and Earn coins",
                  color: Colors.white,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: Dimentions.size24,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: Dimentions.height10,
        ),
        // 2
        Container(
          height: Dimentions.pageViewContainer,
          // color: Colors.red,
          child: PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (
                context,
                position,
              ) {
                return _buildPageItem(position);
              }),
        ),
        SizedBox(
          height: Dimentions.height10,
        ),
        // 3
        Container(
          padding: EdgeInsets.only(
              left: Dimentions.width15, right: Dimentions.width15),
          margin: EdgeInsets.only(
              left: Dimentions.width10, right: Dimentions.width10),
          height: Dimentions.height30 * 1.8,
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: "All Subscription",
                  color: Colors.grey,
                ),
                Container(
                    height: Dimentions.height20 * 1.4,
                    width: Dimentions.height20 * 4.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius:
                            BorderRadius.circular(Dimentions.radius20 * 0.25)),
                    child: Center(
                        child: SmallText(
                      text: "Show More",
                      size: Dimentions.font16,
                      color: Colors.yellow.shade400,
                    ))),
              ],
            ),
          ),
        ),
        //  4
        Container(
          child: AppSlider2(),
        ),
        // 5
        Container(
          padding: EdgeInsets.only(
              left: Dimentions.width15, right: Dimentions.width15),
          margin: EdgeInsets.only(
              left: Dimentions.width10, right: Dimentions.width10),
          height: Dimentions.height30 * 1.8,
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: "Public Groups",
                  color: Colors.grey,
                ),
                Container(
                    height: Dimentions.height20 * 1.4,
                    width: Dimentions.height20 * 4.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius:
                            BorderRadius.circular(Dimentions.radius20 * 0.25)),
                    child: Center(
                        child: SmallText(
                      text: "See More",
                      size: Dimentions.font16,
                      color: Colors.yellow.shade400,
                    ))),
              ],
            ),
          ),
        ),

        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(
                      left: Dimentions.width10,
                      right: Dimentions.width10,
                      bottom: Dimentions.height10),
                  height: Dimentions.belowlistViewTextSize,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimentions.radius20 / 4),
                    color: Colors.purple.shade800,
                  ),
                  child: Container(
                      margin:
                          EdgeInsets.only(bottom: Dimentions.height10 / 1.5),
                      child: Container(
                        height: Dimentions.listViewTextSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(Dimentions.radius20 / 4),
                                topRight:
                                    Radius.circular(Dimentions.radius20 / 4)),
                            color: Colors.grey.shade900),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    width: Dimentions.height80,
                                    height: Dimentions.height23,
                                    color: Colors.teal.shade500,
                                    child: Center(
                                      child: SmallText(
                                        text: "4+ groups",
                                        color: Colors.white,
                                      ),
                                    )),
                                Container(
                                  height: Dimentions.height10 * 5,
                                  width: Dimentions.height10 * 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimentions.height10 * 5),
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/image/prime.png"),
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      right: Dimentions.height10),
                                ),
                              ],
                            ),
                            Container(
                              width: Dimentions.height170,
                              padding: EdgeInsets.only(
                                  top: Dimentions.height10,
                                  bottom: Dimentions.height10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  BigText(
                                    text: "Youtube Premium ",
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: Dimentions.height10 / 2,
                                  ),
                                  SmallText(
                                      text: "by dony", size: Dimentions.font16),
                                  SizedBox(
                                    height: Dimentions.height10 / 2,
                                  ),
                                  BigText(
                                    text: "3 /6 friends...",
                                    size: Dimentions.font16,
                                    color: Colors.purple.shade600,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: Dimentions.height10 * 1.5),
                              child: Column(children: [
                                SmallText(
                                  text: "38/User/Month",
                                  size: Dimentions.font14,
                                ),
                                Container(
                                    height: Dimentions.width20 * 1.4,
                                    width: Dimentions.width20 * 4,
                                    margin: EdgeInsets.only(
                                        top: Dimentions.height10),
                                    decoration: BoxDecoration(
                                        color: Colors.purple.shade900,
                                        borderRadius: BorderRadius.circular(
                                            Dimentions.radius20 * 0.25)),
                                    child: Center(
                                        child: SmallText(
                                      text: "Join",
                                      size: Dimentions.font16,
                                      color: Colors.white,
                                    )))
                              ]),
                            )
                          ],
                        ),
                      )));
            }),
        Container(
          padding: EdgeInsets.only(
              left: Dimentions.width15, right: Dimentions.width15),
          margin: EdgeInsets.only(
              left: Dimentions.width10,
              right: Dimentions.width10,
              top: Dimentions.height10),
          height: Dimentions.height45,
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 255, 255, 255),
                    spreadRadius: Dimentions.height10 / 5),
              ]),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BigText(
                  text: "Show All Public Groups",
                  color: Colors.white,
                  size: Dimentions.font20,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 400,
          padding: EdgeInsets.only(
              left: Dimentions.width10,
              right: Dimentions.width10,
              top: Dimentions.height30 / 2,
              bottom: Dimentions.height30),
          margin: EdgeInsets.only(
              left: Dimentions.width10,
              right: Dimentions.width10,
              top: Dimentions.height30,
              bottom: Dimentions.height30),
          height: Dimentions.pageViewContainer / 1.2,
          decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(Dimentions.radius20 / 4)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: "What do you want us to list next?",
                color: Colors.white,
              ),
              SizedBox(
                height: Dimentions.height10,
              ),
              SmallText(
                text: "Suggest us a subscription",
                color: Colors.white,
                size: Dimentions.font14,
              ),
              SizedBox(
                height: Dimentions.height10,
              ),
              Row(
                children: [
                  Container(
                    // height: 100,
                    width: 300,
                    child: TextFormField(
                      
                      controller: nameController,
                      // enabled: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        
                        // isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                           
                        ),
                        hintText: "Give your suggections",
                      ),
                      
                    ),
                  ),
                  SizedBox(width: Dimentions.width10,),
                    Icon(Icons.send,color: Colors.white, size: 30,)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    // for sliding
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrance = _height * (1 - currScale) / 2;
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrance = _height * (1 - currScale) / 2;
    } else if (index == _currentPageValue.floor() + -1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrance = _height * (1 - currScale) / 2;
    } else {
      var currScale = 0.8;
    }

    return Transform(
      transform: matrix,
      child: Container(
        height: Dimentions.pageViewContainer,
        margin: EdgeInsets.only(
            left: Dimentions.width10, right: Dimentions.width10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimentions.height10),
              color: Colors.amberAccent,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/ref.jpg"))),
        ),
      ),
    );
  }
}

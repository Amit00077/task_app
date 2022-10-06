import 'package:flutter/material.dart';
import 'package:task_app/utils/dimention.dart';
import 'package:task_app/widgets/small_test.dart';

class AppSlider2 extends StatefulWidget {
  const AppSlider2({super.key});

  @override
  State<AppSlider2> createState() => _AppSlider2State();
}

class _AppSlider2State extends State<AppSlider2> {
  PageController pageController = PageController(viewportFraction: 0.5);

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
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
        Container(
          padding: EdgeInsets.only(
              left: Dimentions.width10 / 5, right: Dimentions.width10 / 5),
          margin: EdgeInsets.only(
              left: Dimentions.width10, right: Dimentions.width10),
          height: Dimentions.pageViewContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimentions.height10 / 3),
            color: Colors.grey.shade800,
          ),
          child: PageView.builder(

              // physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              itemCount: 10,
              itemBuilder: (
                context,
                position,
              ) {
                return Container(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(Dimentions.width10 / 3),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimentions.height10 / 2),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/m.jpg"))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 3, left: 3),
                          height: 50,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight:
                                    Radius.circular(Dimentions.radius20 / 4)),
                            color: Colors.teal.shade300,
                          ),
                          child: Column(
                            children: [
                              SmallText(
                                text: "UPTU",
                                size: 12,
                              ),
                              SmallText(
                                text: "57 %",
                                size: 15,
                              ),
                              SmallText(
                                text: "OFF",
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/prime.png"),
                            ),
                            color: Colors.teal.shade300,
                          ),
                          margin: EdgeInsets.only(
                              top: Dimentions.height10,
                              right: Dimentions.height10),
                          height: 40,
                          width: 40,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          // color: Colors.teal.shade300,
                          margin: EdgeInsets.only(
                              bottom: Dimentions.height10,
                              left: Dimentions.height10),
                          padding: EdgeInsets.only(
                              top: Dimentions.height10,
                              right: Dimentions.height10,
                              bottom: Dimentions.height10),
                          height: Dimentions.font20 * 3,
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SmallText(
                                text: "Amazon Prime",
                                size: Dimentions.font16,
                              ),
                              SmallText(
                                text: "Starting At 149",
                                size: Dimentions.font16,
                                color: Colors.yellow.shade400,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
                ;
              }),
        ),
        SizedBox(
          height: Dimentions.height10,
        ),
      ],
    );
  }
}

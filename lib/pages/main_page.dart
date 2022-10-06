import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_app/pages/sections/appbar.dart';
import 'package:task_app/pages/sections/slider.dart';
import 'package:task_app/utils/colors.dart';
import 'package:task_app/utils/dimention.dart';
import 'package:task_app/widgets/bigtext.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
       body: Column(
        children: [
          //Appbar 
          Container(
             child:  AppBar1(),
          ),
          // SizedBox(height: Dimentions.height10,),
          // showing body
          const Expanded(child: SingleChildScrollView(
          child: AppSlider(),
        ))

        
        ],
      ),
    );
  }
}

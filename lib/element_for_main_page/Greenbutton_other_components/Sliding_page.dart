
import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';



class SlidingPage extends StatelessWidget {
  const SlidingPage({super.key,required this.height,required this.width});



  final double width ;

  final double height;



  @override
  Widget build(BuildContext context) {
    return Container(
      width:  width,
      height: height,
      child: SlidingUpPanel(
        minHeight:  15.0,
        maxHeight: height/2,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        panel: Column(
      children: [
       Row(


        children: [

          Text('From'),
          Text('To'),

        ],

       ),

       Row(
        children: [



        ],

       ),
      ],
        ),
        body: Center(
      child: Text("Xin chào Minh Phương"),
        ),
      ),
    );
}
}
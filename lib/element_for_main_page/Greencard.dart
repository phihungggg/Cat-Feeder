import 'package:flutter/material.dart';


import 'Greenbutton_other_components/Sliding_page.dart';

// Start: modify input data before put it into widget 
class GreenCard_Input_modified {
final double? width;
final double? height;

GreenCard_Input_modified({this.width,this.height});


double get width_modified => width != null ? width! * 0.9 : 0;
double get height_modified => height != null ? height! * 0.2 : 0;


}






//
 








class GreenCard extends StatelessWidget {
   final double width;
  final double height;

  const GreenCard({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [Container(
          padding:EdgeInsets.only(left: 15,top:15),
          width: width,
        height: height, // chiều cao
          decoration: BoxDecoration(
          
            gradient: RadialGradient(colors: [
               
              
              Color(0xFF1FB311),
             Color(0xFF0D4D07).withValues(alpha:0.8),
            ]
            ,
            center: Alignment.center,
            stops: [0.0,0.1],
            radius: 10.0, 
            ),
              
        
            //color: Colors.green[400], // màu xanh
            borderRadius: BorderRadius.circular(20), // bo góc
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // bóng mờ
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          alignment: Alignment.topLeft,
          child: Stack(
          children: [
            // Stroke (viền)
            Text(
        "Xin chào Minh Phương,\n"
        "cùng cho Su Kem ăn nhé.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: 'Pacifico',
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 3
            ..color = Color(0xFF599853),
        ),
            ),
            // Fill (nội dung chữ)
            Text(
        "Xin chào Minh Phương,\n"
        "cùng cho Su Kem ăn nhé.",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: 'Pacifico',
          color: Colors.white, // chỉ fill màu
        ),
            ),
          ],
        ),
        ),

        SlidingPage(height: height, width: width),
        ]
      ),
    );
  }
}

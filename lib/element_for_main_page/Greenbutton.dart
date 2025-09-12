import 'package:flutter/material.dart';


// use only to calculate 
class Greenbutton_Input_modified {
final double? width;
final double? height;

Greenbutton_Input_modified({this.width,this.height});


double get width_modified => width != null ? width! * 0.715 : 0;
double get height_modified => height != null ? height! * 0.7 : 0;


}


class Greenbutton extends StatelessWidget {
 final String choiceName; // final để immutable


  final double width;
  final double height;

 
  const Greenbutton({super.key, required this.choiceName,required this.width,
    required this.height,});

 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width, // chiều rộng bạn thấy trong Figma
        height: height, // chiều cao
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5), 
        decoration: BoxDecoration(
          color: Colors.green[400], // màu xanh
          borderRadius: BorderRadius.circular(20), // bo góc
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // bóng mờ
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        alignment: Alignment.center,
        child:  Text(
          choiceName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily:  'Faustina'
          ),
        ),
      ),
    );
  }
}
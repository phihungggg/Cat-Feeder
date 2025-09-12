import 'package:flutter/material.dart';




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
      child: Container(
        width: width,
      height: height, // chiều cao
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
        child: const Text(
          "Xin chào Minh Phương, cùng đặt\n"
          "giờ ăn cho mấy bé nhé.",
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

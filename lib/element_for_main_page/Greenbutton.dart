import 'package:flutter/material.dart';

// class dùng chỉ để tính toán width & height scale
class Greenbutton_Input_modified {
  final double? width;
  final double? height;

  Greenbutton_Input_modified({this.width, this.height});

  double get width_modified => width != null ? width! * 0.715 : 0;
  double get height_modified => height != null ? height! * 0.7 : 0; // có thể tinh chỉnh theo tỷ lệ
}

// Greenbutton dùng ElevatedButton, scale theo width & height đã tính
class Greenbutton extends StatelessWidget {
  final String choiceName;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const Greenbutton({
    super.key,
    required this.choiceName,
    required this.width,
    required this.height,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
  padding: const EdgeInsets.all(8), // khoảng cách ngoài button
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    boxShadow: [
     BoxShadow(
  color: Colors.black.withValues(alpha: 0.17), // 25%
  blurRadius: 20, // Blur
  offset: const Offset(10, 10), // X:0, Y:4
  spreadRadius: 0, // Spread
),
    ],
  ),
  child: SizedBox(
    width: width,   // width từ Greenbutton_Input_modified
    height: height, // height từ Greenbutton_Input_modified
    child: ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[400],
       // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: const BorderSide(
      color: Color(0xFF65835C), // màu stroke (theo Figma bạn gửi)
      width: 1, // độ dày stroke
    ),
        ),
      ),
      child: Text(
        choiceName,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontFamily: 'Faustina',
        ),
      ),
    ),
  ),
),
    );
  }
}

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
    borderRadius: BorderRadius.circular(24),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 6,
        offset: const Offset(0, 3),
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
          borderRadius: BorderRadius.circular(20),
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

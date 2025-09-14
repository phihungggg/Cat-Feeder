import 'package:flutter/material.dart';




 class CalendarFromTo extends StatefulWidget {
  const CalendarFromTo({super.key});

  @override
  State<CalendarFromTo> createState() => _CalendarFromToState();
}

class _CalendarFromToState extends State<CalendarFromTo> {
  late final String day;
  late final String month;
   late final String year;

  @override
  void initState() {
    super.initState();
    day = DateTime.now().day.toString(); 
    month = DateTime.now().month.toString(); 
    year= DateTime.now().year.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.0), // nền trong container
      borderRadius: BorderRadius.circular(5), // bo góc
      border: Border.all( // stroke
        color: Colors.black.withValues(alpha: 0.4), // màu stroke
        width: 1,           // độ dày stroke
      ),

      ),
      child: Stack(children: [Text('$day/$month/$year ',
                        style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Faustina',
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 1
                                      ..color = Color(0xFFFFFAFA).withValues(alpha: 0.6),
                                  ),
                                          ),
                                          
                                          Text('$day/$month/$year ',
                                          style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Faustina',
                                        color: Color(0xFF4A4343), // chỉ fill màu
                                      ),
                                          ),
                                          
                                           ]),
    );
  }
}

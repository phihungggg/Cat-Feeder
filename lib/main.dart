import 'package:flutter/material.dart';

import 'element_for_main_page/Greencard.dart' ;
import 'element_for_main_page/Greenbutton.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

//Deal_with_input
    GreenCard_Input_modified Greencard_input=
     GreenCard_Input_modified(width: MediaQuery.of(context).size.width,height:
      MediaQuery.of(context).size.height);



  Greenbutton_Input_modified Greenbutton_input = 
  Greenbutton_Input_modified(width: MediaQuery.of(context).size.width,height:Greencard_input.height_modified);

//Deal_with_input


    return Scaffold(
      appBar: AppBar(
 
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [ GreenCard(width: Greencard_input.width_modified,height: Greencard_input.height_modified,)
        , 
         SizedBox(height:MediaQuery.of(context).size.height/15 ),



        Container( height: MediaQuery.of(context).size.height * 0.5, child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

        Greenbutton(choiceName: 'HẸN GIỜ',width: Greenbutton_input.width_modified,height: Greenbutton_input.height_modified),

        Greenbutton(choiceName: 'CHO ĂN THỦ CÔNG',width: Greenbutton_input.width_modified,height: Greenbutton_input.height_modified),

        Greenbutton(choiceName: 'CHO ĂN SAU MỖI KHOẢNG THỜI GIAN ',width: Greenbutton_input.width_modified,height: Greenbutton_input.height_modified),
      ],)),
         
        ]

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

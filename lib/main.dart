import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget wid = MyStatefulWidget();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'OCRA\n Reflect, Connect, Support';
  //Optimizing Care, Reducing Adversity

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title, textAlign: TextAlign.center), toolbarHeight: 100, centerTitle: true, backgroundColor: Color.fromRGBO(50, 0, 50, .25)),
        body: Container(
          width: window.physicalSize.width,
          height: window.physicalSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/pregnant.jpg"),
              fit: BoxFit.cover,
              opacity: .75,
            ),
          ),
          child: wid /* add child content here */,
        ),
      ),
      );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Select Topic';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 0,
      style: const TextStyle(color: Colors.deepPurple, fontSize: 25, fontWeight: FontWeight.bold),
      iconSize: 30,
      alignment: Alignment.center,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Select Topic', 'Iron Deficiency', 'Hypertension/Preeclampsia', 'Toxic Stress']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class AnemiaWidget extends StatefulWidget {
  const AnemiaWidget({Key? key}) : super(key: key);

  @override
  State<AnemiaWidget> createState() => _AnemiaWidgetState();
}

class _AnemiaWidgetState extends State<AnemiaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('anemia'),
    );
  }
}

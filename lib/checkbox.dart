import 'package:flutter/material.dart';

class Checkbox extends StatefulWidget {
  Checkbox({Key? key}) : super(key: key);


  @override
  State<Checkbox> createState() => _CheckboxState();
}

class _CheckboxState extends State<Checkbox> {
  bool isEnabled=false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          isEnabled = ! isEnabled;
        });
      },
      child: Container(width: 50,height: 50,
        decoration: BoxDecoration(
          color: isEnabled ? Colors.blue : Colors.white,
            border: Border.all(
                color: Colors.black,
                width: 2),
            shape: BoxShape.rectangle,),
      ),
    );
  }
}

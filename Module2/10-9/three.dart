import 'package:flutter/material.dart';

class Three extends StatefulWidget
{
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three>
{
  bool mood=false;

  @override
  Widget build(BuildContext context) {
    return Container
      (
        child: Column
          (
          children:
          [
              Text(mood ? '😊 Happy' : '😔 Sad',style: TextStyle(fontSize: 24),),
              SizedBox(height: 10,),
              TextButton(onPressed: ()
              {
                setState(() {
                  mood = !mood;
                });
              }, child: Text("Change Mood"))

          ],
          ),
      );
  }
}

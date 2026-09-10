import 'package:flutter/material.dart';

class Fourthscreen extends StatefulWidget {

  @override
  State<Fourthscreen> createState() => _FourthscreenState();
}

class _FourthscreenState extends State<Fourthscreen>
{
  int likes=0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Dtaa"),),body: Center
      (
      child: Column
        (
        children:
        [
          Text("Likes: $likes"),
          ElevatedButton(onPressed: ()
          {
            setState(() {
              likes++;
            });

          }, child: Text("click me"))
        ],
      ),
    ),);
  }
}

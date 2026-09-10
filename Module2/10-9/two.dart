import 'package:flutter/material.dart';

class Two extends StatefulWidget {

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two>
{
  int likes=0;
  @override
  Widget build(BuildContext context)
  {
    return Container(
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
    );
  }
}

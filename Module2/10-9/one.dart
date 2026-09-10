import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
      (
        width: 1300,
        height: 100,
        color: Colors.lightBlue,
        child: Row
          (
            children: 
            [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column
                  (
                    children:
                    [

                      CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,)
                      //Image.asset("assets/a.png")
                    ],
                  ),
              ),
              Column
                (
                  children:
                  [
                    SizedBox(height: 20,),
                    Text("XYZ"),
                    SizedBox(height: 10,),
                    Text("Software Develoer")
                  ],
                )
            ],
          ),
      );
  }
}

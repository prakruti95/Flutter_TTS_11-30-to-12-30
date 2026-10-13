import 'package:flutter/material.dart';


class MyApp2 extends StatelessWidget
{
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (

            child: ListView
              (
                  children:
                  [
                    ListTile(leading: Icon(Icons.twenty_three_mp_outlined),title: Text("A"),),
                    ListTile(leading: Icon(Icons.twenty_three_mp_outlined),title: Text("A"),),
                    ListTile(leading: Icon(Icons.twenty_three_mp_outlined),title: Text("A"),),
                    ListTile(leading: Icon(Icons.twenty_three_mp_outlined),title: Text("A"),),
                  ],



              ),
          ),
      );
  }
}

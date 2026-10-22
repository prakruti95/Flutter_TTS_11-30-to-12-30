
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  bool data = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Example")),
      body: Column(
        children: [
          Center(
            child: Switch(
              value: data,
              onChanged: (value) {
                this.data = value;
              },

            ),

          ),
          ElevatedButton(onPressed: ()
          {
            Navigator.pushNamed(context, "/details");
            //Navigator.pu

          }, child: Text("Click Me"))
        ],
      ),
    );
  }
}

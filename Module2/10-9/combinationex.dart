import 'package:examples/four.dart';
import 'package:examples/one.dart';
import 'package:examples/three.dart';
import 'package:examples/two.dart';
import 'package:flutter/material.dart';

class Combinationex extends StatelessWidget {
  const Combinationex({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Combination"),),
      body: SingleChildScrollView(
        child: Column
          (
            children:
            [
                    One(),
                    SizedBox(height: 10,),
                    Two(),
                    SizedBox(height: 10,),
                    Three(),
                    SizedBox(height: 10,),
                    Four()
            ],
          ),
      ),
    );
  }
}

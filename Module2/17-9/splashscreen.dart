import 'dart:async';

import 'package:examples/combinationex.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    Timer(const Duration(seconds: 3), ()
    => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Combinationex())));
  }
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        body: Center
          (
            //child: Image.asset("assets/a.png",width: 200,height: 200,),
          child: Lottie.asset("assets/abcd.json",width: 200,height: 200,),
          ),
      );
  }
}

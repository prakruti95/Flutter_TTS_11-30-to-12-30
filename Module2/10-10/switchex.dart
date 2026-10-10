import 'package:flutter/material.dart';

class Switchex extends StatefulWidget
{
  const Switchex({super.key});

  @override
  State<Switchex> createState() => _SwitchexState();
}

class _SwitchexState extends State<Switchex>
{

  bool light = true;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (
            child: Column
              (
                children:
                [
                    Switch(value: light, activeThumbColor: Colors.red,onChanged: (value)
                    {
                      setState(() {
                        light = value;
                        if(light==true)
                          {
                              print("true");
                          }
                        else
                          {
                            print("false");
                          }
                      });
                    })

                ],
              ),
          ),
      );
  }
}

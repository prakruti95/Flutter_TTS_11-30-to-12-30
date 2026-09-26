import 'package:flutter/material.dart';

class MenuEx extends StatefulWidget {
  const MenuEx({super.key});

  @override
  State<MenuEx> createState() => _MenuExState();
}

class _MenuExState extends State<MenuEx>
{
  bool a=false;
  bool b=false;
  bool c=false;
  double amount = 0;
  double a1=100;
  double b1=70;
  double c1=120;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Menu"),actions:
    [
      IconButton(
        onPressed: () {
          setState(() {
            a = false;
            b = false;
            c = false;
            amount = 0;
          });
        },
        icon: const Icon(Icons.refresh),
      ),
    ],),body: Center
      (
        child: Column
          (
          children:
          [
            CheckboxListTile(value: a, onChanged: (value)
            {
              setState(() {
                this.a=value!;
                print("My Pizza: $a");
              });
            },title: Text("Pizza Rs.100"),),
            CheckboxListTile(value: b, onChanged: (value)
            {
              setState(() {
                this.b=value!;
                print("My Burger: $b");
              });
            },title: Text("Burger Rs.70"),),
            CheckboxListTile(value: c, onChanged: (value)
            {
              setState(() {
                this.c=value!;
                print("My Coffee: $c");
              });
            },title: Text("Coffee Rs.120"),),
            ElevatedButton(onPressed: ()
            {
              placeorder();
              //print("Total : $amount");
            }, child: Text("Order"))
          ],
          ),
      ),);
  }

  placeorder() {
    setState(() {
      amount = 0;
      if (a) amount += a1;
      if (b) amount += b1;
      if (c) amount += c1;
    });

    print("Total : $amount");
  }
}

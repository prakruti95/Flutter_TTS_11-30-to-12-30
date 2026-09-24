import 'dart:io';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()
      {
        return showconfirmalert(context);
      },
      child: Scaffold(appBar: AppBar(title: Text("Alert Example"),),
      body: Center
        (
          child: Column
            (
            children:
            [
                ElevatedButton(onPressed: ()
                {
                  showconfirmalert(context);
                }, child: Text("Click me")),
              ElevatedButton(onPressed: ()
              {
                showsimplealert(context);
              }, child: Text("Click me2")),
              ElevatedButton(onPressed: ()
              {
                showtextalert(context);
              }, child: Text("Click me3")),
              ElevatedButton(onPressed: ()
              {
                showselectionalert(context);
              }, child: Text("Click me4"))

            ],
            ),
        ),),
    );
  }

   showconfirmalert(BuildContext context)
   {
      Widget yesbtn = ElevatedButton(onPressed: ()
      {
          exit(0);
      }, child: Text("YES"));
      Widget nobtn = ElevatedButton(onPressed: ()
      {
        Navigator.pop(context);
      }, child: Text("NO"));

      AlertDialog alert = AlertDialog
        (
          title: Text("Confim"),
          content: Text("Are you you want to exit?"),
          actions:
          [
            yesbtn,
            nobtn
          ],
        );

      showDialog(context: context, builder: (BuildContext context)
      {
        return alert;
      });

   }
  showsimplealert(BuildContext context)
  {
    Widget okbtn = ElevatedButton(onPressed: ()
    {
      exit(0);
    }, child: Text("OK"));


    AlertDialog alert = AlertDialog
      (
      icon: Icon(Icons.error),
      title: Text("Warning"),
      content: Text("Simple Alert"),
      actions:
      [
        okbtn
      ],
    );

    showDialog(context: context, builder: (BuildContext context)
    {
      return alert;
    });

  }
  showtextalert(BuildContext context)
  {
    Widget submitbtn = ElevatedButton(onPressed: ()
    {
        Navigator.pop(context);
    }, child: Text("Submit"));


    AlertDialog alert = AlertDialog
      (
      title: Text("Enter Name"),
      content: TextField(decoration: InputDecoration(hintText: "Details"),),
      actions:
      [
        submitbtn
      ],
    );

    showDialog(context: context, builder: (BuildContext context)
    {
      return alert;
    });

  }
  showselectionalert(BuildContext context)
  {

    AlertDialog alert = AlertDialog
      (
      title: Text("Choose"),
      content: Column
        (
          children:
          [
              TextButton(onPressed: (){print("Apple");}, child: Text("Apple")),
            TextButton(onPressed: (){print("Samsung");}, child: Text("Samsung")),

          ],
        ));

    showDialog(context: context, builder: (BuildContext context)
    {
        return alert;
    });

  }

}


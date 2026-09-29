import 'package:flutter/material.dart';

class BillScreen extends StatefulWidget
{
  var amount;
  var data;
  BillScreen({required this.data,required this.amount});

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Bill"),),
        body: Center
          (
            child: Column
              (
              children:
              [
                Text("\n Cafe Bill \n"),
                Text("${widget.data}"),
                Text("-----------------"),
                Text("${widget.amount}"),
                ElevatedButton(onPressed: (){}, child: Text("Print Bill"))


              ],
              ),
          ),
      );
  }
}

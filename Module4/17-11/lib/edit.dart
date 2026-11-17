import 'package:flutter/material.dart';
import 'package:sqfliteex/dbhelper.dart';
import 'package:sqfliteex/viewdata.dart';

class EditScreen extends StatefulWidget {
  var n,e,p,i;
  EditScreen({required this.n,required this.e,required this.p,required this.i});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen>
{
  var _formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  MyDbHelper dbHelper = MyDbHelper();

  @override
  void initState()
  {
    dbHelper.open();
    name.text = widget.n;
    email.text = widget.e;
    pass.text = widget.p;

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Edit Data"),),body: Form(
      key:_formkey,
      child: Center
        (
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column
            (
            children:
            [
              TextFormField(controller:name,decoration: InputDecoration(hintText: "Enter Name",border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextFormField(controller:pass,decoration: InputDecoration(hintText: "Enter Password",border: OutlineInputBorder()),obscureText: true,),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {
                String n = name.text.toString();
                String e = email.text.toString();
                String p = pass.text.toString();
                dbHelper.db.rawUpdate("update students set name=?,email=?,password=? where id=?",[n,e,p,widget.i]);
                print("Updated");
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> ViewData()));
              }, child: Text("Update"))
            ],
          ),
        ),
      ),
    ),);
  }
}

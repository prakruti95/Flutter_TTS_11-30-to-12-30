import 'package:flutter/material.dart';
import 'package:sqfliteex/dbhelper.dart';
import 'package:sqfliteex/viewdata.dart';

class InsertData extends StatefulWidget {
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData>
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

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Insert Data"),),body: Form(
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
                          dbHelper.db.rawInsert("insert into students (name,email,password) values(?,?,?)",[n,e,p]);
                          print("Inserted");
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> ViewData()));
                    }, child: Text("Insert"))
                ],
              ),
          ),
        ),
    ),);
  }
}

import 'package:flutter/material.dart';

import 'dbhelper.dart';
import 'edit.dart';
import 'insertdata.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  MyDbHelper dbHelper = MyDbHelper();
  List<Map> slist = [];

  @override
  void initState() {
    dbHelper.open();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Data")),
      body: Center
        (
        child: SingleChildScrollView
          (
            child: Column
              (
              children:slist.map((tops)
              {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(tops['name']),
                    subtitle: Text(tops['email']),
                    trailing: Wrap
                      (
                        children:
                        [
                          IconButton(onPressed: ()
                          {
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => EditScreen(n:tops["name"],e:tops["email"],p:tops["password"],i:tops["id"])));

                          }, icon: Icon(Icons.edit)),
                          IconButton(onPressed: ()
                          {
                            dbHelper.db.rawDelete("delete from students where id =?",[tops["id"]]);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ViewData()),
                            );
                          }, icon: Icon(Icons.delete)),
                        ],
                      ),
                  ));
              }).toList(),
          )
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InsertData()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  getdata() {
    Future.delayed(Duration(milliseconds: 500), () async {
      slist = await dbHelper.db.rawQuery('SELECT * FROM students');
      setState(() {});
    });
  }
}

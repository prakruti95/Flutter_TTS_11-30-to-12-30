import 'package:flutter/material.dart';
import 'package:mydata/formex.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardScreen extends StatefulWidget
{
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  late SharedPreferences sharedPreferences;
  var email;

  @override
  void initState()
  {
    checklogin();

  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome ${email}"),actions:
        [
          IconButton(onPressed: ()
          {
            sharedPreferences.setBool("tops", true);
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyFormEx()));
          }, icon:Icon(Icons.logout))
        ],),
        body: Center
          (
            child: Column
              (
              children:
              [

              ],
              ),
          ),
      );
  }

  Future<void> checklogin()async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      email = sharedPreferences.getString("t1");
    });

  }
}

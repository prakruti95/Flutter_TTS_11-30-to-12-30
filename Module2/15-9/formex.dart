import 'package:examples/combinationex.dart';
import 'package:flutter/material.dart';

class MyFormEx extends StatefulWidget {
  const MyFormEx({super.key});

  @override
  State<MyFormEx> createState() => _MyFormExState();
}

class _MyFormExState extends State<MyFormEx>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@'
    r'((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Forn")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder()),validator:(value)
                {
                  if(value!.isEmpty)
                    {
                      return "Please Enter Email";
                    }
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                },),
                SizedBox(height: 10),
                TextFormField(controller:pass,decoration: InputDecoration(hintText: "Enter Password",border: OutlineInputBorder()),obscureText:true,validator:(value)
                {
                  if(value!.isEmpty)
                  {
                    return "Please Enter Password";
                  }
                }),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: ()
                {
                    String myemail = email.text.toString();
                    String mypass = pass.text.toString();
                    if(_formkey.currentState!.validate())
                      {

                        if(myemail=="tops@gmail.com" && mypass=="1234")
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Combinationex()));
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));

                      }
                      else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));

                      }

                      }




                }, child: Text("Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  bool data = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Example")),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: data,
              onChanged: (value) {
                setState(() {
                  this.data = value;
                });
              },
            ),

            // GestureDetector(
            //   child: Image.network(
            //     "https://static.vecteezy.com/system/resources/thumbnails/072/888/156/small/pink-cosmos-flowers-with-dew-drops-in-golden-light-field-photo.jpg",
            //     width: 250,
            //     height: 250,
            //   ),
            //   onTap: ()
            //   {
            //     Fluttertoast.showToast(
            //         msg: "This is Center Short Toast",
            //         toastLength: Toast.LENGTH_SHORT,
            //         gravity: ToastGravity.CENTER,
            //         timeInSecForIosWeb: 1,
            //         backgroundColor: Colors.red,
            //         textColor: Colors.white,
            //         fontSize: 16.0
            //     );
            //   },
            // ),
            InkWell(
              child: Image.network(
                "https://static.vecteezy.com/system/resources/thumbnails/072/888/156/small/pink-cosmos-flowers-with-dew-drops-in-golden-light-field-photo.jpg",
                width: 250,
                height: 250,
              ),
              onTap: ()
              {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

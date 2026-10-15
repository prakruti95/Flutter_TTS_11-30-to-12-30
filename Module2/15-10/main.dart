import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget
{


  @override
  Widget build(BuildContext context) 
  {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: Container(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ), //BoxDecoration
                            ), //Container
                          ), //Flexible
                          SizedBox(
                            width: 20,
                          ), //SizedBox
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                ) //BoxDecoration
                            ), //Container
                          ) //Flexible
                        ], //<Widget>[]
                        mainAxisAlignment: MainAxisAlignment.center,
                      ), //Row
                    ), //Flexible
                    SizedBox(
                      height: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        width: 380,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue), //BoxDecoration
                      ), //Container
                    ), //Flexible
                    SizedBox(
                      height: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Container(
                              width: 180,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.cyan,
                              ), //BoxDecoration
                            ), //Container
                          ), //Flexible
                          SizedBox(
                            width: 20,
                          ), //SizedBox
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Container(
                                width: 180,
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.cyan,
                                ) //BoxDecoration
                            ), //Container
                          ) //Flexible
                        ], //<Widget>[]
                        mainAxisAlignment: MainAxisAlignment.center,
                      ), //Row
                    ), //Flexible
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ), //Column
              ) //Padding
          ), //Container
        ) //Container
    //Scaffold

    // body: Center(
      //   child: Column(
      //     children: [
      //
      //       Image.network("https://t3.ftcdn.net/jpg/17/57/62/02/360_F_1757620293_i3kQLVu5QydUt5ydMcqSuJliVA5b7yXS.jpg",width: width,height: height,),
      //       ElevatedButton(onPressed: ()
      //       {
      //         print(width);
      //         print(height);
      //         //_makephonecall("7622880021");
      //       }, child: Text("Call")),
      //       ElevatedButton(onPressed: ()
      //       {
      //         sendsms();
      //       }, child: Text("SMS")),
      //     ],
      //   ),
      // ),
    );
  }

  Future<void> _makephonecall(String phoneNumber) async
  {
    final launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  Future<void> sendsms() async {
    var _url = Uri.parse("sms:9016974208");
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }
}

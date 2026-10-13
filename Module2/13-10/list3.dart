import 'package:flutter/material.dart';


class MyApp3 extends StatelessWidget
{
  List img = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPPgjG-v_nCajhUwAueSES5gB5DKSKrc6zvdq0W0L3bRWKHcBLcUkRLb2G&s=10","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPPgjG-v_nCajhUwAueSES5gB5DKSKrc6zvdq0W0L3bRWKHcBLcUkRLb2G&s=10","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPPgjG-v_nCajhUwAueSES5gB5DKSKrc6zvdq0W0L3bRWKHcBLcUkRLb2G&s=10","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPPgjG-v_nCajhUwAueSES5gB5DKSKrc6zvdq0W0L3bRWKHcBLcUkRLb2G&s=10","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTho-3fXzeYgW7GxgeHxvLLjSTtbf4uAQsWLdV8Yi4Rcg&s"];
  List text = ["Flutter","Java","Flutter2","Flutter","Java","Flutter2","Flutter","Java","Flutter2","Flutter","Java","Flutter2"];


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (

            child: ListView.builder(itemCount:img.length,itemBuilder: (context,index)
            {
              return ListTile
                (
                  leading: Image.network(img[index],width: 250,height: 250,),
                  title: Text(text[index]),
                );
            })

          ),
      );
  }
}

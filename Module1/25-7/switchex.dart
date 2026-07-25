import 'dart:io';

void main()
{
  print("Enter Your Choice \n Press 1 for English \n Press 2 for Hindi \n Press 3 for gujarati");
  var num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1:print("English");

    case 2:print("Hindi");

    case 3:print("Gujarati");
   
  }
}
import 'dart:io';

void main()
{
  var amount = 0;

  print("Choose Items \n 1 for Pizza \n 2 for burger \n 3 for coffee");
  var data = stdin.readLineSync().toString();
  var data2 = stdin.readLineSync().toString();
  var data3 = stdin.readLineSync().toString();

  if(data=="pizza")
  {
      amount+=100;
  }
  if(data2=="burger")
  {
    amount+=70;
  }
  if(data3=="coffee")
  {
    amount+=120;
  }

  print("\n Total : $amount");

}
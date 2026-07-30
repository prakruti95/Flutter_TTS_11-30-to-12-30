import 'dart:io';

void main()
{
  print("Any Number");
  var num=int.parse(stdin.readLineSync().toString());//1234
  var min=9;//4

  while(num>0)
  {
    int rem = num%10;
    if(rem<min)
      {
        min = rem;
      }
    num=num~/10;
  }

  print(min);


}
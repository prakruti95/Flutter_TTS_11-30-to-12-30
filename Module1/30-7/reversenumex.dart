import 'dart:io';

void main()
{
  print("Any Number");
  var num=int.parse(stdin.readLineSync().toString());//1234
  var rev=0;

  while(num>0)
  {
    int rem = num%10;
    rev=(rev*10)+rem;
    num=num~/10;
  }

  print(rev);


}
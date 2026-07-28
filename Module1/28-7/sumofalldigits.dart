import 'dart:io';

void main()
{
  print("Any Number");
  var num=int.parse(stdin.readLineSync().toString());
  var sum=0;
  while(num>0)
  {
    int rem = num%10;
    sum+=rem;
    num=num~/10;
  }
  print(sum);


}
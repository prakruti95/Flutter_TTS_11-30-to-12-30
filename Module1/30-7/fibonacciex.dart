import 'dart:io';

void main()
{

  var num;
  print("Enter the terms: ");
  num = int.parse(stdin.readLineSync().toString());

  int a=0;//1
  int b=1;//1

  for(int i=0;i<=num;i++)
    {
      print(a);//0//1
      int c = a+b;//0+1->1//1+1->2
      a=b;//a->1//a->1
      b=c;//b->1//b->2
    }


}
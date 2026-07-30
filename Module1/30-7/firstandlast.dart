import 'dart:io';

void main()
{
  print("Any Number");
  var num=int.parse(stdin.readLineSync().toString());//1234
  var fd=0,ld=0;

  ld = num%10;//1234%10->4

    while(num>0)//12>0
    {
        if(num>9)
          {
              num=num~/10;//123//12//1
          }
          else
          {
              fd=num;
              num=num~/10;
          }
    }

  var ans = fd+ld;//1+4->5
  print(ans);


}
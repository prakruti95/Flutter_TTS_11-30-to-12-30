import 'dart:io';

void main()
{
  print("Enter Your Email");
  var email = stdin.readLineSync().toString();

  print("Enter Your Password");
  var pass = stdin.readLineSync().toString();

  if(email=="a@gmail.com")
  {
      print("email is correct");
  }
  if(pass=="1234")
  {
    print("pass is correct");
  }

}
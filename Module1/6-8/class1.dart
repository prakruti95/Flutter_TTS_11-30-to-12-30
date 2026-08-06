class Student
{
  //data member
  var name;
  var email;

  //method
  display()
  {
    print("$name and $email");
  }

}
void main()
{
   //object
    Student s1 = Student();

    //value assign
    s1.name="sneh";
    s1.email="s@gmail.com";

    Student s2 = Student();

    s2.name="dhyey";
    s2.email="d@gmail.com";

    //print("Name is ${s1.name} Email is ${s1.email}");//print
  //  print("Name is ${s2.name} Email is ${s2.email}");

  s1.display();//method call
  s2.display();
  //Student s2 = new Student();
    //var s3 = Student();
}
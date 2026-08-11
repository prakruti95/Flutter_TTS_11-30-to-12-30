class Student
{
  var name;
  var surname;
  static var clg="Atmiya";//static variable

  Student(var name,var surname)
  {
      this.name=name;
      this.surname=surname;
  }

  display()
  {
    print("Your Name is $name and Your Surname is $surname and Your College is $clg");
  }

  static change()//static method
  {
    clg="XYZ";
  }
}
void main()
{
    Student s1 = Student("a","b");
    Student s2 = Student("x","y");
    Student s3 = Student("p","q");
    Student s4 = Student("m","n");
    Student.change();
    s1.display();
    s2.display();
    s3.display();
    s4.display();


}
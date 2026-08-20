class Tops
{
  String call(int age, String name)
  {
    return "The name of the person is $name and age is $age";
  }
}
void main()
{
  Tops t1 = Tops();
  var t2 = t1(25, "Peter");
  print(t2);
}
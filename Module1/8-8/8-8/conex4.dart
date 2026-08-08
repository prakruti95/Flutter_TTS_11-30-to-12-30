class Tops2
{

  var name;
  var surname;

  Tops2(var name,var surname)
  {
    this.name = name;
    this.surname =surname;
  }

  display()
  {
    print("Your name is $name and Your Surname is $surname");
  }


}
void main()
{
  Tops2 t1 = Tops2("a","b");
  Tops2 t2 = Tops2("p","q");

  t1.display();
  t2.display();


}
class Tops3
{
    var name;
    var surname;

    Tops3(var name)
    {
      this.name = name;
      //print("$name");
    }
    Tops3.a(var surname)
    {
      this.surname =surname;
     // print("$surname");
    }
    display()
    {
      print("$name and $surname");
    }

}
void main()
{
  Tops3 t1 = Tops3("a");
  Tops3 t2 = Tops3.a("b");

  t1.display();
  t2.display();

}
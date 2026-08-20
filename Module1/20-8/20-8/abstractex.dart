abstract class A
{
    a();
    a1()
    {

    }
}
class B extends A
{
  @override
  a() {
    print("A called");
  }

  //b();

}
void main()
{
   B b = B();
   b.a();
}
class A
{
     a()
     {
        print("A Called");
     }

}
class B
{
  b()
  {
    print("B Called");
  }
}
class C implements A,B
{
  @override
  a() {
    print("A11 Called");
  }

  @override
  b() {
    print("B1 Called");
  }

}
void main()
{
    C c = C();
    c.a();
    c.b();
}
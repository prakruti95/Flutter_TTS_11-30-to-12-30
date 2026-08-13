mixin A
{
  a()
  {
    print("A Called");
  }
}
mixin B
{
  b()
  {
    print("B Called");
  }
}
class C with A,B
{
  c()
  {
    print("C Called");
  }
}
void main()
{

    C c = C();
    c.a();
    c.b();
    c.c();
}
class A
{
  var a;
  get_a(var a)
  {
    this.a=a;
  }
}
class B extends A
{
  var b;
  get_b(var b)
  {
    this.b=b;
  }
}
mixin C
{
  var c;
  get_c(var c)
  {
    this.c=c;
  }
}
class D extends B with C
{
  multiply()
  {
    var ans = a*b*c;
    print(ans);
  }
}

void main()
{
  D d = D();
  d.get_a(2);
  d.get_b(3);
  d.get_c(4);
  d.multiply();

}
import 'package:dart_programs/8-8/conex1.dart';

class TOPS
{
  var a;
  var b;

  void set(x, y)
  {
    this.a = x;
    this.b = y;
  }

  void add()
  {
    var z = this.a + this.b;
    print(z);
  }
}

void main()
{
    TOPS t1 = TOPS();
    TOPS t2 = TOPS();

    t1.set(1, 2);
    t1.add();

    t2..set(4,2)..add();



}

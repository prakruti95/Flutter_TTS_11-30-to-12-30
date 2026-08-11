class Bank
{
  bank()
  {
    print("banking");
  }
}
class Current extends Bank
{
  current()
  {
    print("current");
  }
}
class Save extends Bank
{
  save()
  {
    print("saving");
  }
}
void main()
{
    Current c1 = Current();
    Save s1 = Save();

    c1.current();
    s1.save();
    s1.bank();
}
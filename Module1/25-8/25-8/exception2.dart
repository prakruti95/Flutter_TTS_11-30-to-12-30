checkage(var age)
{
      if(age<18)
      {
        throw Exception("Not Eligible to vote");
      }
      else
      {
        print("Eligible to vote");
      }
}
void main()
{
    try
    {
      checkage(15);
    }
    catch(e)
    {
      print(e);
    }
}
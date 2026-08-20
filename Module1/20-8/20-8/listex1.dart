void main()
{
   //List list = List(5);
   List list = ["Riddhi","Rushita","Sneh","Hetvi"];
   //var list2 = [];

    print(list);
   print("---------------");

   print(list[1]);
    print("---------------");
    for(var data in list)
    {
        print(data);
    }
    list.add("vishal");
   print("---------------");
   for(var data in list)
   {
     print(data);
   }
   List list2 = ["A","B","C","D"];

   list.addAll(list2);
   print("---------------");
    for(var data in list)
    {
      print(data);
    }
   list.remove("Sneh");
    list.removeAt(5);
    print("---------------");
   for(var data in list)
   {
     print(data);
   }
   list.add("Riddhi");
   print("---------------");
   for(var data in list)
   {
     print(data);
   }

}
void main()
{
  Set set = Set();
  set.add("a");
  set.add("b");
  set.add("c");
  set.add("d");
  set.add("a");
  set.add("q");
  Set set2 = Set();
  set2.add("q");
  set2.add("p");
  set2.add("r");
  set2.add("s");
  set.addAll(set2);
  print(set);
}
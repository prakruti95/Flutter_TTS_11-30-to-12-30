import 'dart:ffi';

void main()
{
  Map map =
  {
    "India":"+91",
     "USA":"+1"
  };

  Map map2 =
  {
    "India":"+92",
    "USA":"+1"
  };

  print(map);
  print(map.keys);
  print(map.values);

  map.addAll(map2);

  print(map);


}
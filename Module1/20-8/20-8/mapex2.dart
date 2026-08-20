void main()
{
  Map<String,String> fruits = Map();             // Method 2: Using Constructor
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"]  = "green";

  print(fruits);
  fruits.update("apple", (value) => "green");
  print(fruits);

  fruits.forEach((key, value) => print("key: $key and value: $value"));
}
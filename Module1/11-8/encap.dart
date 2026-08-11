class Tops
{
  var _name;//set
  var _city;//set

  set name(value) {
    _name = value;
  }

  get name => _name;


  get city => _city;

  set city(value)
  {
    _city = value;
  }
}
void main()
{
  Tops t1 = Tops();

  //set
  t1.name="dhyey";
  t1.city="rajkot";

  //get
  print("${t1.name} from ${t1.city}");

}
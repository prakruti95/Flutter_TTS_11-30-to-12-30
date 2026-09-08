import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:FourthScreen(),debugShowCheckedModeBanner: false,));
}
class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome to tops"),backgroundColor: Colors.blueGrey,),
        body: Center
          (
            child: Column
              (
                children:
                [
                    Text("Sneh",style: TextStyle(fontSize: 20.00,color: Colors.blue,fontWeight: FontWeight.bold),),
                    Text("Jay",style: TextStyle(fontSize: 20.00,color:Colors.amber),),
                    Text("Rushita",style: TextStyle(fontSize: 20.00),),
                    Text("Riddhi",style: TextStyle(fontSize: 20.00),),
                    Text("Hetvi",style: TextStyle(fontSize: 20.00),),

                ],
              ),

          ),
      );
  }


}
class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Second Screen"),),
        body: Center
          (
            child: Column
              (
                children: 
                [ 
                    Image.network("https://images.pexels.com/photos/4991338/pexels-photo-4991338.jpeg?cs=tinysrgb&dpr=1&w=500",width: 100,height: 100,),
                    Image.asset("assets/a.png")
                ],
              ),
          ),
      );
  }

}
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text("Third Screen"),),
      body: SingleChildScrollView(
        child: Center
          (
          child: Column
            (
            children:
            [
              Image.network(
                "https://marketplace.canva.com/Pk_Vc/MAFsWnPk_Vc/1/tl/canva-red-apple-fruit-MAFsWnPk_Vc.png",
                width: 200, height: 200,),
              Text("Apple"),
              Image.network(
                "https://media.istockphoto.com/id/2161305439/photo/watermelon-triangle-slices-with-seeds-isolated-on-white-background-clipping-path.jpg?s=612x612&w=0&k=20&c=dRpzSqolWDXM7hJeGUZvRv8tJqX1ceP6v-hJQGoOqJk=",
                width: 200, height: 200,),
              Text("Watermelon"),
              Image.network(
                "https://cdn.pixabay.com/photo/2016/09/03/20/48/bananas-1642706_1280.jpg",
                width: 200, height: 200,),
              Text("Banana"),
              Image.network(
                "https://media.istockphoto.com/id/1224636159/photo/closeup-of-a-red-guava-cut-in-half-in-the-background-several-guavas-and-green-leaf.jpg?s=612x612&w=0&k=20&c=KJ9YilkRRuFh0bnw64Ol0IZDfoQF7UIxyC6dRVIjaoA=",
                width: 200, height: 200,),
              Text("Guava"),
            ],
          ),
        ),
      ),
    );
  }

}
class FourthScreen extends StatefulWidget
{
  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  int likes=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text("Fourth Screen"),),
      body: SingleChildScrollView(
        child: Center
          (
          child: Column
            (
            children:
            [
                Text("Likes: $likes"),
                ElevatedButton(onPressed: ()
                {
                  likes++;
                  print("clicked");
                }, child: Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}

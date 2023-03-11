import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Screen2.dart';
void main ()
{
  return(runApp(MaterialApp(home:MainScreen())));
}
class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("HappyDounts",style: TextStyle(color: Colors.pink,fontSize:70,fontWeight: FontWeight.bold),),
              Lottie.asset("lotties/131846-coffee-and-donut.json"),
              ElevatedButton(style: ElevatedButton.styleFrom(
                primary: Colors.pink,),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListScreen()),
                  );
                } ,
                  child:
                      Text("Go to Home",style: TextStyle(color: Colors.white),),
              ),
         ],
          ),
        )
      ),
    );
  }

}
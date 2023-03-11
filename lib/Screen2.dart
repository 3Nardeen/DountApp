import 'package:flutter/material.dart';

import 'Screen3.dart';
class DountsItems{
  final Image image1;
  final String name;
  final int price;
  DountsItems({
    required this.image1,
    required this.name,
    required this.price,
  });
}
class ListScreen extends StatelessWidget{
   ListScreen({super.key});
  List<DountsItems> ListOfItems=[
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (1).png"),name: "Strawberry Frost",price: 75),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (6).png"),name: "Bendera",price: 65),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (5).png"),name: "Choc Frost",price: 60),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (7).png"),name: "Suger Raised",price: 70),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (2).png"),name: "Choc Almond",price: 75),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (3).png"),name: "Crunchy Choc",price: 50),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (4).png"),name: "Black Frost",price: 80),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Malaysia - World's leading baked goods and coffee chain (8).png"),name: "Bavarian",price: 70),
    DountsItems(image1: Image.asset("images/Dunkin' Donuts Iced Caramel Latte Lite (Small) 80….png"),name: "Signature Latte",price: 45),
    DountsItems(image1: Image.asset("images/8103d927-e6b1-489b-8264-b8e7a4abdc45.png"),name: "Iced Americano",price: 50),
    DountsItems(image1: Image.asset("images/913bf08b-f2ed-4ef1-9537-f9ad905fca04.png"),name: "Frozen Chocolate",price: 55),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Home",style: TextStyle(fontSize: 30),),
          centerTitle: true,
        ),
        body:
          ListView.builder(
            padding: const EdgeInsets.all(8),
    itemCount: ListOfItems.length,
    itemBuilder: (context, index) {
      int priceofelement=ListOfItems[index].price;
      return InkWell(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 230,
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: ListOfItems[index].image1,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ListOfItems[index].name,style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Text("price: $priceofelement",style: TextStyle(fontSize: 20,color: Colors.pink))
                    ],
                  )

                ],
              ),
            ),
          ],
        ),

          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return detailsScreen(MyItem: ListOfItems[index]);
                }
                )
            );


          }
      );
    },
    ),
      );
  }
}
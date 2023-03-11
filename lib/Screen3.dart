
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen2.dart';

class detailsScreen extends StatefulWidget{
  DountsItems MyItem;
  detailsScreen({ Key? key ,required this.MyItem}) : super(key: key);
  @override
  State<detailsScreen> createState() => _detailsScreenState();
}

class _detailsScreenState extends State<detailsScreen> {
  bool checked =false;
  bool checked1 =false;
  late int counter;
  void initState() {
    super.initState();
    counter = widget.MyItem.price;
    // Get the order
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Details"),
          centerTitle: true,
        ),

      body:
      Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text("$counter \$",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 60,color: Colors.pink
                  ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Text("DOUNTS",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 90,color: Colors.pink
                        ),
                        ),
                        Positioned(
                          top: 50,
                          child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          child: widget.MyItem.image1,
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Extra:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
    ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Caramel",style: TextStyle(fontSize: 20,)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text("(+EGP 15.00)"),
                                  Checkbox(
                                    value: checked,
                                    onChanged: (value) {
                                      setState(()=>{
                                        checked=value!,
                                        if(value){
                                          counter+=15
                                        }else{
                                          counter-=15
                                        }
                                      });
                                    },),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Choc",style: TextStyle(fontSize: 20,)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("(+EGP 20.00)"),
                                  Checkbox(
                                    value: checked1,
                                    onChanged: (value) {
                                      setState(()=>{
                                        checked1=value!,
                                        if(value){
                                          counter+=20
                                        }else{
                                          counter-=20
                                        }
                                      });
                                    },),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
            ),

          ],

              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.pink,
        child: const Icon(Icons.check),
      ),
    );

  }
}

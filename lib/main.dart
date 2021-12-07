import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

int counter=0;
 List switchcolor=[Colors.orangeAccent.shade100,Colors.grey,Colors.brown.shade200,Colors.amber.shade200,
   Colors.blueGrey.shade100, Colors.red.shade100,Colors.grey,Colors.greenAccent.shade100,
 Colors.indigoAccent];

 final names =['Orange Bag','Long Belt Bag','Fashion Bag','Bag Set','Node Bag','Old Fashion Bag','Large Tote Bag','White Bag'];
 final prices =['\$250.00','\$1450.00','\$225.00','\$375.00','\$350.00','\$1799.99','\$815.00','\$2400'];

final images =['images/brown bag1.jpg',
 'images/classic bag1.png',
'images/elegant bag1.png',
'images/pinkbag set1.png',
'images/purple bag1.png',
'images/red bag1.png',
  'images/large tote bag1.png',
'images/white bag1.png'];
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.only(top: 30),
            child: Row(children: [
              SizedBox(width: 5,),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_back, color: Colors.black54,size: 30,),),
              Spacer(flex: 4),
              IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.search, color: Colors.black54,size: 30,),),
              SizedBox(width: 10,),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart_outlined, color: Colors.black54,size: 30,),),
            ],),
          ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('Women',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 10,right: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 5,),
                  TextButton(
                    child: Text('Hand bag', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                     onPressed: () {},
                  ),
                  SizedBox(width: 30,),
                  TextButton(
                  child: Text('Jewellery', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black)),
                      onPressed: () {},
                  ),
                  SizedBox(width: 30,),
                  TextButton(
                  child: Text('Footwear', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black)),
                      onPressed: () {},
                  ),
                  SizedBox(width: 30,),
                  TextButton(
                  child: Text('Dresses', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black)),
                      onPressed: () {},
                  ),
                  SizedBox(width: 30,),
                  TextButton(
                  child: Text('Shirts', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black)),
                      onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 0
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => secondscreen()),
                        );
                        setState(() {
                          counter=index;
                        });
                      },
                      child: Container(
                          height: 440,
                          width: 200,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                            Image.asset('${images[index]}',
                              height: 100,
                              width: 150,
                              //fit: BoxFit.fill,
                            ),
                            SizedBox(height: 25,),
                            Text(' ${names[index]}',style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.w300,color: Colors.black54,wordSpacing: 1),),
                            SizedBox(height: 3,),
                            Text(' ${prices[index]}',style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.bold,color: Colors.black,),)
                          ]
                          ),
                          margin: EdgeInsets.only(left: 10,right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: switchcolor[index]
                          )
                      ),
                    );
                  }
              ),
            ),

          ],)
    );
  }
}
class secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:[
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              color: switchcolor[counter],
              child: Row(children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white,size: 30,),),
                Spacer(flex: 4),
                IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.search, color: Colors.white,size: 30,),),
                SizedBox(width: 10,),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart_outlined, color: Colors.white,size: 30,),),
              ],),
            ),
            Stack(
              //fit: StackFit.expand,
              clipBehavior: Clip.hardEdge,
              overflow: Overflow.visible,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: switchcolor[counter],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                    Text('       Aristocratic Hand Bag',style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w700,color: Colors.white),),
                      Text('       ${names[counter]}',style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 150,),
                      Text('          Price',style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,color: Colors.white),),
                      Text('      ${prices[counter]}',style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,color: Colors.white),)
                  ],),
                ),
                Positioned(
                  top: 280,
                  child:
                  Container(
                    width: 360,
                    height: 450,
                    clipBehavior: Clip.hardEdge,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 80,),
                        Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('     Color',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black38,
                              //letterSpacing: 1
                            )),
                              Text('')
                          ],),
                          SizedBox(width: 110,),
                          Column(children: [
                            Text('Size',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black38,
                              //letterSpacing: 1
                            )),
                            Text('12 cm',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              //letterSpacing: 1
                            )),
                          ],)
                        ],),
                          SizedBox(height: 40,),
                          Text('''
     Complete your outfit with trendy bag by Guess elegant 
     and durable for everyday use, fits with most of your 
     occasions and suitable for all your needsMade of 
     Leather-Synthetic/PUspecialized by a stylish and 
     gorgeous design to suit your personal requirements''',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black38,
                                  //letterSpacing: 1
                              )),
                          SizedBox(height: 40,),
                          Row(children: [
                            SizedBox(width: 20,),
                            Container(
                              height: 40,
                              width: 50,
                              child: OutlinedButton(
                                  onPressed: (){},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                  ),
                                  child:  Icon(Icons.add,color: Colors.grey,)),
                            ),
                            SizedBox(width: 10,),
                            Text('01',style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 50,
                              child: OutlinedButton(
                                  onPressed: (){},
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                  ),
                                  child:
                                  Icon(Icons.remove,color: Colors.grey,)
                              ),
                            ),
                          ],),
                          SizedBox(height: 10,),
                          Row(children: [
                            SizedBox(width: 20,),
                            Container(
                              height: 50,
                              width: 60,
                              child: OutlinedButton(
                                  onPressed: (){},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                  ),
                                  child:
                                  Icon(Icons.add_shopping_cart_outlined,)
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                  child: Center( child :(
                                      Text('BUY NOW',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,

                                        ),)
                                  ),
                                  ),
                                  height: 50,
                                  width: 240,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: switchcolor[counter],
                                    borderRadius: BorderRadius.circular(20),
                                  )

                              ),
                            )


                          ],)

                      ],),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                  ),
                ),
                Positioned(
                    top: 150,
                    left: 150,
                    child: Container(
                      width: 200,
                      height: 200,
                      //color: Colors.blue,
                      child:
                      Image.asset('${images[counter]}',
                        height: 150,
                        width: 150,
                      ),
                    )
                )
              ],
            )
          ]
      ),

    );
  }
}


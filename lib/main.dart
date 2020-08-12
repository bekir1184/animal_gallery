import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);
class HomePage extends StatefulWidget{
  @override
    _HomePageState createState() =>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black87,),
          onPressed: (){},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Ilginc Hayvanlari" ,style: TextStyle(color: Colors.black87 ,fontSize: 25),),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Kesfedin" ,style: TextStyle(color: Colors.black ,fontSize: 40),),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.black87,),
                          hintText: "Herhangi bir hayvani arayin",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Bugun populer olan hayvanlar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(height: 12,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        populerCard('images/bir.jpg'),
                        populerCard('images/iki.jpg'),
                        populerCard('images/uc.jpg'),
                        populerCard('images/dort.jpg'),
                        populerCard('images/bes.jpg'),
                      ],
                    ),
                  )
                ],
              ),

            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 280,
              child: ListView(
                children: <Widget>[
                  normalCard('images/alti.jpg'),
                  normalCard('images/yedi.jpg'),
                  normalCard('images/sekiz.jpg'),
                  normalCard('images/dokuz.jpg'),
                  normalCard('images/on.jpg'),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }

  Widget populerCard(image){
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color:Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image:AssetImage(image)
          )
        ),
      ),
    );
  }

  Widget normalCard(image){
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color:Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(image)
            )
        ),
      ),
    );
  }

}

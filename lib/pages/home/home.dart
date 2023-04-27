import 'package:flutter/material.dart';
import 'package:orange_farms/pages/home/views/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)),
          ),
        ),

        SizedBox(height: size.height * 0.05),

        Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: size.height*0.2,
                    width: size.width*0.4,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          offset: Offset(0.0, 20.0),
                          blurRadius: 30.0,
                          color: Colors.black12
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      Container(
                          child: Image(image: AssetImage('assets/images/farmer.png')),
                      height: size.height*0.15,),
                      Center(child: Text("hello",style: TextStyle(),))
                    ]
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: Container(
                    height: size.height*0.2,
                    width: size.width*0.4,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          offset: Offset(0.0, 20.0),
                          blurRadius: 30.0,
                          color: Colors.black12
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image(image: AssetImage('assets/images/farmer.png')),
                            height: size.height*0.15,),
                          Center(child: Text("hello",style: TextStyle(),))
                        ]
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height*0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: size.height*0.2,
                    width: size.width*0.4,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          offset: Offset(0.0, 20.0),
                          blurRadius: 30.0,
                          color: Colors.black12
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image(image: AssetImage('assets/images/farmer.png')),
                            height: size.height*0.15,),
                          Center(child: Text("hello",style: TextStyle(),))
                        ]
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: size.height*0.2,
                    width: size.width*0.4,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          offset: Offset(0.0, 20.0),
                          blurRadius: 30.0,
                          color: Colors.black12
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image(image: AssetImage('assets/images/farmer.png')),
                            height: size.height*0.15,),
                          Center(child: Text("hello",style: TextStyle(),))
                        ]
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height*0.03),


          ],
        ),
      ],
    )
    );
  }
}

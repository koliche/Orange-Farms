import 'package:flutter/material.dart';
import 'package:orange_farms/pages/home/views/home_body.dart';
import 'package:orange_farms/pages/workspace/workspace.dart';

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
        body: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 25),
                  padding: EdgeInsets.all(20),
                  // height: size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey[800], shape: BoxShape.circle),
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Go Premium',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Get access to \nthe fast and accurate models!",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.05),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => WorkspacePage()));
                        },
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 20.0),
                                  blurRadius: 30.0,
                                  color: Colors.black12)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image(
                                      image:
                                          AssetImage('assets/icons/workspace.png')),
                                  height: size.height * 0.15,
                                ),
                                Center(
                                    child: Text(
                                  "Workspace",
                                  style: TextStyle(),
                                ))
                              ]),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 20.0),
                                  blurRadius: 30.0,
                                  color: Colors.black12)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image(
                                      image:
                                          AssetImage('assets/icons/yield.png')),
                                  height: size.height * 0.15,
                                ),
                                Center(
                                    child: Text(
                                  "Yield Estimation",
                                  style: TextStyle(),
                                ))
                              ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 20.0),
                                  blurRadius: 30.0,
                                  color: Colors.black12)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image(
                                      image:
                                          AssetImage('assets/icons/detection.png')),
                                  height: size.height * 0.15,
                                ),
                                Center(
                                    child: Text(
                                  "Object Detection",
                                  style: TextStyle(),
                                ))
                              ]),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 20.0),
                                  blurRadius: 30.0,
                                  color: Colors.black12)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image(
                                      image:
                                          AssetImage('assets/icons/segmentation.png')),
                                  height: size.height * 0.15,
                                ),
                                Center(
                                    child: Text(
                                  "Segmantation",
                                  style: TextStyle(),
                                ))
                              ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                ],
              ),
            ),
          ],
        ));
  }
}

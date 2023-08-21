import 'package:flutter/material.dart';

import '../CustomWidgets/CustomWidgetClass.dart';

class SkullCandy extends StatefulWidget{
  @override
  State<SkullCandy> createState() => _SkullCandyState();
}

class _SkullCandyState extends State<SkullCandy> {

  int currentIndex = 0;
  final PageController controller = PageController();

  String res = "assets/images/skullcandy.png";
  String amt = "9900";
  String res1 = "assets/images/skullcandy.png";
  String res2 = "assets/images/skullgreen.png";
  String res3 = "assets/images/skullblue.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: Colors.grey.shade200,
                    child: Center(
                      child: Image.asset(res, height: 280, width: 280,),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton(Icons.arrow_back_ios, Colors.black),
                      Text("Skull Candy",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
                      CircularButton(Icons.share, Colors.black),
                      CircularButton(Icons.favorite_border, Colors.black),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(51), topLeft: Radius.circular(51)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Skull Candy Earphones", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
                      SizedBox(height: 15,),
                      Text("₹ ${amt}.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(21),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(Icons.star, color: Colors.white,),
                                ),
                                Text("4.8", style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("(320 reviews)", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Colors.grey),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text("Colors", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              res = res1;
                              amt = "9900";
                              setState(() {

                              });
                            },
                              child: CircleAvatar(radius: 18, backgroundColor: Color(0xffE7663C),)),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: (){
                              res = res2;
                              amt = "9100";
                              setState(() {

                              });
                            },
                              child: CircleAvatar(radius: 18, backgroundColor: Color(0xff01986F),)),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: (){
                              res = res3;
                              amt = "8800";
                              setState(() {

                              });
                            },
                              child: CircleAvatar(radius: 18, backgroundColor: Color(0xff1389D9),)),
                          SizedBox(width: 7,),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(21),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Description", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Text("Specifications", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          Text("Review", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Feel the beat for 44 hours - powered by Skullcandy's drivers, Push Active provides crisp clear sound and deep bass to enhance your listening. With 44 hours of battery between the case and the earbuds you'll be listening to your favorite songs all day!.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your earSkull-iQ Technology - Share your tunes with a friend in real time, activate your assistant, customize your earbud controls and trigger your phone camera to take the perfect selfie.Skull-iQ also offers complete hands free, meaning you never need to take off your gloves or let go of the handlebar. Play, pause, adjust volume, take calls, skip tracks, launch Spotify and activate Stay-Aware Mode, all without ever touching your device.Never lost with Tile - With Tile technology, Skullcandy makes it super easy to track down either earbud and keep your gadgets safe! Download the Tile app and follow the instructions to activate.Buy With Confidence - 1 Year warranty included with the Push Active, whether you're an adult or child be sure to wear your earbuds in full confidence."),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
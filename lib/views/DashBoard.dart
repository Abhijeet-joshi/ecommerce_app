
import 'package:flutter/material.dart';
import 'package:shopping_app/CustomWidgets/CustomWidgetClass.dart';
import 'package:shopping_app/views/SkullCandy.dart';

class DashBoard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoard>{

  TextEditingController searchBarController = TextEditingController();

  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png",
    "assets/images/img4.png",
    "assets/images/img5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: (){
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBar(),
                    const SizedBox(height: 10,),
                    CustomizedTextField(prefix: Icons.search, hintText: "Search...", ctrl: searchBarController, suffix: Icons.filter_alt),
                    ImagesPanel(),
                    const SizedBox(height: 10,),
                    ScrollCategories(),
                    const SizedBox(height: 10,),
                    Exclusives(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget TitleBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircularButton(Icons.grid_view, Colors.black),
        Text("Shopping Wallah",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
        CircularButton(Icons.shopping_cart_outlined, Colors.black),
      ],
    );
  }

  Widget ImagesPanel(){
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index % images.length;
              });
            },
            itemCount: images.length,
            itemBuilder: (ctx, index){
              return Image.asset(images[index]);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < images.length; i++)
              pageImageIndicator(currentIndex == i)
          ],
        ),
      ],
    );
  }

  Widget pageImageIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }

  Widget ScrollCategories(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem("assets/images/shoes.png", "Shoes", Colors.lightGreenAccent, 4.0),
          SizedBox(width: 15,),
          CategoryItem("assets/images/electronic.png", "Electronics", Colors.grey.shade300, 4.0),
          SizedBox(width: 15,),
          CategoryItem("assets/images/cosmetics.png", "Cosmetics", Colors.pinkAccent.shade100, 4.0),
          SizedBox(width: 15,),
          CategoryItem("assets/images/saree.png", "Women's\nfashion", Colors.yellow, 8.0),
          SizedBox(width: 15,),
          CategoryItem("assets/images/jwell.png", "Jwellery", Colors.yellow.shade800, 4.0),
          SizedBox(width: 15,),
          CategoryItem("assets/images/tshirt.png", "T-Shirt", Colors.grey.shade100, 4.0),
          SizedBox(width: 15,),
          CategoryItem("assets/images/sports.png", "Sports\nWear", Colors.cyan, 4.0),
        ],
      ),
    );
  }

  Widget CategoryItem(String imgSrc, String catName, Color bgColor, double pad){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(radius: 25, backgroundColor: bgColor, child: Padding(
          padding: EdgeInsets.all(pad),
          child: Image.asset(imgSrc),
        ),),
        SizedBox(height: 5,),
        Text(catName, style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
      ],
    );
  }

  Widget Exclusives(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Special For You",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
        SizedBox(height: 15,),
        Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder)=> SkullCandy()));
              },
                child: ItemCard(imgSrc: "assets/images/skullcandy.png", iName: "Skull Candy Earphones", iPrice: "₹ 9900", vis: true)),
            SizedBox(width: 10,),
            ItemCard(imgSrc: "assets/images/shoes.png", iName: "Sports Shoes", iPrice: "₹ 650", vis: false),
          ],
        ),
        Row(
          children: [
            ItemCard(imgSrc: "assets/images/sports.png", iName: "Sports Wear", iPrice: "₹ 3200", vis: false),
            SizedBox(width: 10,),
            ItemCard(imgSrc: "assets/images/tshirt.png", iName: "T-Shirts", iPrice: "₹ 350", vis: false),
          ],
        ),
        Row(
          children: [
            ItemCard(imgSrc: "assets/images/cosmetics.png", iName: "Perfumes", iPrice: "₹ 1200", vis: false),
            SizedBox(width: 10,),
            ItemCard(imgSrc: "assets/images/electronic.png", iName: "boAt Airpodes 121v2", iPrice: "₹ 1350", vis: false),
          ],
        ),
      ],
    );
  }

  Widget ItemCard({required String imgSrc, required String iName, required String iPrice, required bool vis}){
    return Card(
      elevation: 5,
      shadowColor: Colors.grey.shade300,
      color: Colors.grey.shade50,
      child: SizedBox(
        width: 180,
        height: 210,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        color: Colors.deepOrange,
                        child: Icon(Icons.favorite_border, color: Colors.white,)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Image.asset(imgSrc, height: 120, width: 120,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 8),
              child: Text(iName, style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 8),
              child: Text(iPrice, style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Visibility(
              visible: vis,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(radius: 10, backgroundColor: Color(0xffE7663C),),
                  SizedBox(width: 5,),
                  CircleAvatar(radius: 10, backgroundColor: Color(0xff01986F),),
                  SizedBox(width: 5,),
                  CircleAvatar(radius: 10, backgroundColor: Color(0xff1389D9),),
                  SizedBox(width: 7,),
                ],
              ),
            ),
          ],
        ), //Padding
      ), //SizedBox
    );
  }


}
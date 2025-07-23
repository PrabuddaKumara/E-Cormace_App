import 'package:demo/widgets/support_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List category = [
    "images/headphone_icon.png",
    "images/headphone.PNG",
    "images/headphone2.png",
    "images/laptop.png",
    "images/laptop2.png",
    "images/watch.png",
    "images/watch2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 238, 238),

      body: Container(
        margin: EdgeInsets.only(top: 50, left: 10, right: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("hey,  Pasindu ", style: AppWidgets().headlineText()),
                    Text("Good Morning ", style: AppWidgets().lightText()),
                  ],
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child: Image.asset(
                    "images/boy.jpg",
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "     Search...",
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Categriers", style: AppWidgets().headlineText()),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(),
            Row(
              children: [
                Container(
                  height: 130,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("All ", style: TextStyle(color: Colors.white)),
                ),
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.only(right: 30),
                    height: 130,
                    child: ListView.builder(
                      itemCount: category.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryList(image: category[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  String image;
  CategoryList({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(color: Colors.white),
      height: 90,
      width: 90,
      child: Column(
        children: [
          Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
          SizedBox(height: 30),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}

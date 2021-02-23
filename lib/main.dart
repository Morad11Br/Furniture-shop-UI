import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/moduls/buttons_list.dart';
import 'package:furniture_mobile_app/widgets/card_widget.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle selectedText = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      decoration: TextDecoration.underline);
  TextStyle inSelectedText =
      TextStyle(fontWeight: FontWeight.bold, color: Color(0xffC8C8C8));
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Color(0xff333333),
                        ),
                        onPressed: null,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffF26F51),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Choose",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Your Furniture",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: textfield(),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      buttons.length,
                      (index) => TextButton(
                        onPressed: () {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        child: Text(
                          buttons[index],
                          style: activeIndex == index
                              ? selectedText
                              : inSelectedText,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      cardModel(),
                      cardModel(),
                      cardModel(),
                      cardModel(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Popular',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: bottomNavBar(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

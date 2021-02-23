import 'package:flutter/material.dart';

Widget cardModel() {
  return Builder(
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: MediaQuery.of(context).size.height * 1 / 2.5,
          width: MediaQuery.of(context).size.width * 1 / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF5F5F5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 6, right: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xffF36E51),
                      ),
                    )
                  ],
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Image.asset(
                      "image/module1.png",
                    ),
                  ),
                ),
                Text(
                  'module Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'type of module',
                  style: TextStyle(color: Color(0xffB7BFA5)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        '\$250',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, right: 8),
                      child: CircleAvatar(
                        backgroundColor: Color(0xff8D9A6E),
                        radius: 14,
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget bottomNavBar() {
  return Builder(
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 1 / 9.17,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Color(0xff687154)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.favorite, color: Color(0xff8D9A6F)),
            Icon(Icons.search, color: Color(0xff8D9A6F)),
            Icon(Icons.shopping_cart, color: Color(0xff8D9A6F)),
            Icon(Icons.person, color: Color(0xff8D9A6F)),
          ],
        ),
      );
    },
  );
}

Widget textfield() {
  return TextFormField(
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
      ),
      prefixIcon: Icon(
        Icons.search,
        color: Color(0xffC8C8C8),
      ),
      hintText: "search furniture",
      hintStyle: TextStyle(color: Color(0xffC8C8C8)),
      suffixIcon: Icon(Icons.menu_open_rounded),
      filled: true,
      fillColor: Color(0xffF4F4F4),
    ),
  );
}

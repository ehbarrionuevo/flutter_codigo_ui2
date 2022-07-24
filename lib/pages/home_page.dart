import 'package:flutter/material.dart';
import 'package:flutter_codigo_ui2/data/data_dummy.dart';
import 'package:flutter_codigo_ui2/ui/widgets/item_category_widget.dart';
import 'package:flutter_codigo_ui2/ui/widgets/item_slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(46.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://infotourism.news/wp-content/uploads/2022/05/5-Top-Hotels-in-Santorini-Greece.jpg",
                  ),
                ),
              ),
              child: Stack(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi Elvis,",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Where do you want to go?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Where are you going?",
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white.withOpacity(0.85)),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.45),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 4),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(46.0),
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Santorini, Greece",
                                  style: TextStyle(
                                    height: 1.1,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Recommendation",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  ...List.generate(
                                    4,
                                    (index) => Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Color(0xffFEA92E),
                                    ),
                                  ),
                                  ...List.generate(
                                    5 - 4,
                                    (index) => Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "4.3 ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "(2344 views)",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot places",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff3E88E1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: places.map<Widget>((e) => ItemSliderWidget(placeMap: e,)).toList()
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff3E88E1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // children: List.generate(categories.length, (index) => ItemCategoryWidget()),
                      // children: [
                      //   ...List.generate(
                      //     categories.length,
                      //     (index) => ItemCategoryWidget(
                      //       color: categories[index]["color"],
                      //       text: categories[index]["text"],
                      //       icon: categories[index]["icon"],
                      //     ),
                      //   ),
                      // ],
                      children: categories.map<Widget>(
                        (Map<String, dynamic> e) => ItemCategoryWidget(
                          // text: e["text"],
                          // color: e["color"],
                          // icon: e["icon"],
                          categoryMap: e,
                        ),
                      ).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular places",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff3E88E1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: places.map<Widget>((e) => ItemSliderWidget(placeMap: e,)).toList()
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

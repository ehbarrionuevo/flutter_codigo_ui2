import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            contentPadding: EdgeInsets.symmetric(horizontal: 4),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                Row(
                  children: [
                    Container(
                      height: 160,
                      width: 240,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(14.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://world-traveled.com/wp-content/uploads/2021/01/219733347-kopie_1610117841-1040x690.jpg",),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

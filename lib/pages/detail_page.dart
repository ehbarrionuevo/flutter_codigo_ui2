import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  Map<String, dynamic> place;

  DetailPage({required this.place});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: height * 0.62,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        46.0,
                      ),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(place["image"]),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                              46.0,
                            ),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xff17467A).withOpacity(0.6),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      SafeArea(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppBar(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              actions: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.search,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 24.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        place["name"],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white70,
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Text(
                                            place["country"],
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white70,
                                    size: 32.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            place["rate"].toInt(),
                            (index) => Icon(
                              Icons.star,
                              size: 20,
                              color: Color(0xffFEA92E),
                            ),
                          ),
                          ...List.generate(
                                (5 - place["rate"].toInt()).toInt(),
                                (index) => Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.black12,
                            ),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "${place["rate"]} ",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "(${place["views"]} views)",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        place["description"],
                        style: TextStyle(
                          height: 1.7,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(
                        height: 120.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 30,
                    offset: const Offset(0, -12),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 50,
                    offset: const Offset(0, -12),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "\$${place["price"].toStringAsFixed(2)}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(${place["days"]} days)",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff2588EE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Book now",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

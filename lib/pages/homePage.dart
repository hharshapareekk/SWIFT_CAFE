import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe_hp/database.dart';
import 'package:swift_cafe_hp/pages/searchPage.dart';
import 'package:swift_cafe_hp/styles.dart';

// HomePage widget
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// State class for HomePage widget
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image with Blur Effect
          Positioned.fill(
            child: Image.asset(
              'assets/images/bgImage.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          // Your Content
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    // Hi emoji
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '👋',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    // Date and name
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20/12/2022',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 13,
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Joshua Scanlan',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    // Nav to Cart page -> container with icon
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 2.0,
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                      child: Icon(Icons.shopping_basket_rounded),
                    ),
                    // Nav to user profile page -> container with circle Circle avatar
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 2.0,
                              blurRadius: 2.0,
                            )
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/user.jpeg'),
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                    },
                    child: Container(
                      width: 320,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Search favorite Beverages',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(width: 60),
                          Icon(
                            Icons.tune_rounded,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 370,
                  decoration: BoxDecoration(color: Colors.black26),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Most Popular Beverages',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 18,
                            color: Color(0xffB6B6B6),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int index = 0;
                                  index < Database.CoffeeItems.values.length;
                                  index++)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MostPopularBevContainer(
                                    image: Database.CoffeeItems.values
                                        .elementAt(index)
                                        .image,
                                    name: Database.CoffeeItems.values
                                        .elementAt(index)
                                        .name,
                                    categories: Database.CoffeeItems.values
                                        .elementAt(index)
                                        .categories,
                                    rating: Database.CoffeeItems.values
                                        .elementAt(index)
                                        .rating,
                                    numOfOrders: Database.CoffeeItems.values
                                        .elementAt(index)
                                        .numOfOrders,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 400,
                  width: 400,
                  color: Colors.black26,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Get it instantly',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 18,
                                color: Color(0xffB6B6B6),
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
                      GetItInstantlyContainer(
                        image: Database.CoffeeItems.values.elementAt(3).image,
                        name: Database.CoffeeItems.values.elementAt(3).name,
                        rating:
                            Database.CoffeeItems.values.elementAt(3).rating.toString(),
                        numOfOrders: Database.CoffeeItems.values
                            .elementAt(3)
                            .numOfOrders.toString(),
                        description: Database.CoffeeItems.values
                            .elementAt(3)
                            .description,
                      ),
                      SizedBox(height: 10),
                      GetItInstantlyContainer(
                        image: Database.CoffeeItems.values.elementAt(4).image,
                        name: Database.CoffeeItems.values.elementAt(4).name,
                        rating:
                            Database.CoffeeItems.values.elementAt(4).rating.toString(),
                        numOfOrders: Database.CoffeeItems.values
                            .elementAt(4)
                            .numOfOrders.toString(),
                        description: Database.CoffeeItems.values
                            .elementAt(4)
                            .description,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 60,
        width: 310,
        decoration: BoxDecoration(
            color: Colors.black26.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 3.0,
                blurRadius: 3.0,
              )
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(Icons.home_outlined, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(Icons.person_2_outlined, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(Icons.account_balance_wallet_outlined, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(Icons.question_answer_outlined, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

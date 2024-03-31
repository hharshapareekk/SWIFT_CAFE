import 'package:flutter/material.dart';
import 'package:swift_cafe_hp/database.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String selectedAttribute = 'Full';
  int _selectedQuantity = 1;
  bool isFull = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Database.CoffeeItems.values.elementAt(3).image,
                  fit: BoxFit.cover,
                ),
                Container(
                    height: 680,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/bgImage.png'),
                      fit: BoxFit.cover,
                    )),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Text(
                                    Database.CoffeeItems.values
                                        .elementAt(3)
                                        .name,
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 25,
                                        color: Colors.white,
                                        letterSpacing: 0.2,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 160,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    width: 40,
                                    height: 30,
                                    child: DropdownButton<int>(
                                      value: _selectedQuantity,
                                      iconEnabledColor: Colors.black,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedQuantity = value!;
                                        });
                                      },
                                      items:
                                          List.generate(5, (index) => index + 1)
                                              .map((value) {
                                        return DropdownMenuItem<int>(
                                          value: value,
                                          child: Text(
                                            value.toString(),
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 18,
                                              color: Colors.black,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '${Database.CoffeeItems.values.elementAt(3).rating}⭐  (${Database.CoffeeItems.values.elementAt(3).numOfOrders})  ',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/images/veg.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                Database.CoffeeItems.values
                                    .elementAt(3)
                                    .description,
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    letterSpacing: 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Choice of Cup Filling',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 25,
                                      color: Colors.white,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    _selectColorChange("Full"),
                                    _selectColorChange("1/2 Full"),
                                    _selectColorChange("3/4 Full"),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: _selectColorChange("1/4 Full"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Choice of Milk',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 25,
                                      color: Colors.white,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Skim Milk',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Almond Milk',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Soy Milk',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Lactose-Free Milk',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Full Cream Milk',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Full Cream Milk',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Oat Milk',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Choice of Sugar',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 25,
                                      color: Colors.white,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Sugar X1',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '1/2 Sugar',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Sugar X2',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'No Sugar',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )
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
            SizedBox(width: 40,),
            Icon(Icons.square_outlined,color: Colors.white,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('High Priority',style: TextStyle(color: Colors.white,fontSize: 15),),
            ),
            SizedBox(width: 15,),
            Container(
              width: 110,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(child: Text('Submit',style: TextStyle(fontFamily: "Inter",fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }

// to allow change of color for cup filling
  Widget _selectColorChange(String attribute) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAttribute = attribute;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Container(
          width: 80,
          height: 40,
          child: Center(
              child: Text(
            attribute,
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 17,
                color: selectedAttribute == attribute
                    ? Colors.white
                    : Colors.black),
          )),
          decoration: BoxDecoration(
              color:
                  selectedAttribute == attribute ? Colors.green : Colors.white,
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _buildLever() {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          isFull =
              details.localPosition.dx > 25; // Adjust the threshold as needed
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isFull ? Colors.green : Colors.grey,
        ),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

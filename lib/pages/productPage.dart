import 'package:flutter/material.dart';
import 'package:swift_cafe_hp/database.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String selectedAttribute = 'Full';
  int _selectedQuantity = 1;
  int selectedLeverIndex = 0;
  bool _isHighPriority = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Database.CoffeeItems.values.elementAt(3).image,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bgImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Database.CoffeeItems.values.elementAt(3).name,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 25,
                          color: Colors.white,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: DropdownButton<int>(
                          value: _selectedQuantity,
                          iconEnabledColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _selectedQuantity = value!;
                            });
                          },
                          items: List.generate(5, (index) => index + 1)
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
                  SizedBox(height: 8),
                  Row(
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
                  SizedBox(height: 8),
                  Text(
                    Database.CoffeeItems.values.elementAt(3).description,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Choice of Cup Filling',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 25,
                      color: Colors.white,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _selectColorChange("Full"),
                        _selectColorChange("1/2 Full"),
                        _selectColorChange("3/4 Full"),
                        _selectColorChange("1/4 Full"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Choice of Milk',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 25,
                      color: Colors.white,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildLever('Skim Milk', 0),
                            _buildLever('Almond Milk', 1),
                            _buildLever('Soy Milk', 2),
                            _buildLever('LactoseFree Milk', 3),
                          ],
                        ),
                      ),
                      SizedBox(width: 60),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildLever('Full Cream Milk', 4),
                            _buildLever('Full Cream Milk', 5),
                            _buildLever('Oat Milk', 6),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Choice of Sugar',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 25,
                      color: Colors.white,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildLever('Sugar X1', 0),
                          _buildLever('1/2 Sugar', 1),
                        ],
                      ),
                      SizedBox(width: 100),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildLever('Sugar X2', 3),
                          _buildLever('No Sugar', 4),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
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
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _isHighPriority = !_isHighPriority;
                              });
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color:
                                  _isHighPriority ? Colors.green : Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'High Priority',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Icon(Icons.error,color: Colors.red,),
                          SizedBox(width: 15),
                          Container(
                            width: 110,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                    : Colors.black,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: selectedAttribute == attribute ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  //choice of milk and sugar
  Widget _buildLever(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLeverIndex = index;
        });
      },
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: selectedLeverIndex == index ? Colors.green : Colors.grey,
            ),
            child: Center(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text.split(' ')[0] +
                        '\n', // First word on the first line
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: text.split(' ')[1], // Second word on the second line
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
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

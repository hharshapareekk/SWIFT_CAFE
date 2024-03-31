import 'package:flutter/material.dart';




class MostPopularBevContainer extends StatefulWidget {
 
  final String image;
  final String name;
  final String categories;
  final double rating;
  final int numOfOrders;

  const MostPopularBevContainer({
    Key? key,
    required this.image,
    required this.name,
    required this.categories,
    required this.rating,
    required this.numOfOrders,
  }) : super(key: key);

  @override
  State<MostPopularBevContainer> createState() =>
      _MostPopularBevContainerState();
}

class _MostPopularBevContainerState extends State<MostPopularBevContainer> {
   late String finalimg;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 3.0,
              blurRadius: 3.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      width: 250,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),

          //Image for coffee item
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Center(
              child: Image.asset(
                widget.image,
                fit: BoxFit.fill,
                width: 140,
                height: 140,
              ),
            ),
          ),
          SizedBox(height: 10),

          //name for coffee item
          Center(
            child: Text(
              widget.name,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 5,
              ),
            ),
          ),
          SizedBox(height: 4),

          //coffee item categories
          Center(
            child: Text(
              widget.categories,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 13,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //coffee item rating
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  widget.rating.toString(),
                  style: TextStyle(fontFamily: 'Inter', fontSize: 20),
                ),
                Text(
                  ' ⭐ ',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  " (" + widget.numOfOrders.toString() + ")",
                  style: TextStyle(fontFamily: 'Inter', fontSize: 20),
                ),
                SizedBox(
                  width: 40,
                ),

                // leads to product page
                InkWell(
                  onTap: (){
                    
                    
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff66A35C),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GetItInstantlyContainer extends StatefulWidget {
  final String name;
  final String image;
  final String rating;
  final String description;
  final String numOfOrders;
  final VoidCallback? onPressed;

  const GetItInstantlyContainer({
    Key? key,
    required this.name,
    required this.image,
    required this.rating,
    required this.description,
    required this.numOfOrders,
    this.onPressed,
  }) : super(key: key);

  @override
  State<GetItInstantlyContainer> createState() =>
      _GetItInstantlyContainerState();
}

class _GetItInstantlyContainerState extends State<GetItInstantlyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 170,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 3.0,
            blurRadius: 3.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${widget.rating}⭐  (${widget.numOfOrders})  ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      color: Colors.black,
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
              Container(
                width: 200,
                child: Text(
    
                      widget.description,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  widget.image,
                  height: 118,
                  width: 118,
                ),
              ),
              Positioned(bottom: 0,
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff66A35C).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    
    );
  }
}

import 'package:amazonredesign/widgets/categories_container.dart';
import 'package:amazonredesign/widgets/collections.dart';
import 'package:amazonredesign/widgets/hot_deals.product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 5.0,
        title: Image(
          image: AssetImage(
            "assets/amazon_logo.png",
          ),
          height: 100.0,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Container(
              height: 38.0,
              width: 38.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Center(
                child: Icon(
                  Icons.star,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Container(
              height: 38.0,
              width: 38.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Center(
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 25.0,
        child: Container(
          height: 80.0,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 45.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.amber[800]),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    height: 45.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.grey[200]),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 45.0,
                width: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey[200],
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            "\$229.99",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber[800],
                      ),
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView(
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25.0)),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20.0),
                          hintText: "What are you looking for?",
                          hintStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Hot deals",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Show All",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[800]),
                      ),
                      SizedBox(width: 5.0),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.amber[800],
                        size: 15.0,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                height: 220.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    HotDealsProduct(
                      productName: "Air Pods Pro",
                      imageUrl: "assets/airpods_pro.png",
                      companyName: "Apple",
                      price: "\$209.99",
                      estimatedDelivery: "June 27",
                    ),
                    HotDealsProduct(
                      productName: "Alexa Echo",
                      imageUrl: "assets/alexa_echo.png",
                      companyName: "Amazon",
                      price: "\$49.99",
                      estimatedDelivery: "June 30",
                    ),
                    HotDealsProduct(
                      productName: "Macbook Pro",
                      imageUrl: "assets/macbook_pro.png",
                      companyName: "Apple",
                      price: "\$1999.99",
                      estimatedDelivery: "June 28",
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
              child: Text(
                "Popular Categories",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            CategoriesContainer(
              icon: Icons.laptop_mac,
              text: "Computers & Laptops",
            ),
            SizedBox(height: 10.0),
            CategoriesContainer(
              icon: Icons.keyboard,
              text: "Consoles & Games",
            ),
            SizedBox(height: 10.0),
            CategoriesContainer(
              icon: Icons.filter_vintage,
              text: "Health",
            ),
            SizedBox(height: 10.0),
            CategoriesContainer(
              icon: Icons.fastfood,
              text: "Fast food",
            ),
            SizedBox(height: 10.0),
            CategoriesContainer(
              icon: Icons.wc,
              text: "Fashion",
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
              child: Text(
                "Made in India | Collections by Amazon Launchpad",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Collections(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

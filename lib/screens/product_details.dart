import 'package:amazonredesign/widgets/description_text.dart';
import 'package:amazonredesign/widgets/feature_text.dart';
import 'package:amazonredesign/widgets/suggested_image.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productCompany;
  final String productPrice;
  final String estimatedDelivery;

  ProductDetails({
    @required this.imageUrl,
    @required this.productName,
    @required this.productCompany,
    @required this.productPrice,
    @required this.estimatedDelivery,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[50],
        elevation: 5.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 38.0,
              width: 38.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
            ),
          ),
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
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[200]),
                  child: Center(
                    child: Text(
                      "Add to wishlist",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.amber[800]),
                  child: Center(
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView(
          physics: ScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Image(
                        image: AssetImage(imageUrl),
                        height: 180.0,
                      ),
                    ),
                    Positioned(
                      top: 15.0,
                      right: 30.0,
                      child: Container(
                        child: Icon(
                          Icons.share,
                          color: Colors.grey[350],
                          size: 30.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        productName,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        productPrice,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[800],
                            letterSpacing: 0.8),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        productCompany,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      Text(
                        estimatedDelivery,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 110.0,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 20.0),
                  SuggestedImage(
                    imageUrl: imageUrl,
                    isSelected: true,
                  ),
                  SizedBox(width: 10.0),
                  SuggestedImage(
                    imageUrl: "assets/airpods1.png",
                    isSelected: false,
                  ),
                  SizedBox(width: 10.0),
                  SuggestedImage(
                    imageUrl: "assets/airpods2.png",
                    isSelected: false,
                  ),
                  SizedBox(width: 10.0),
                  SuggestedImage(
                    imageUrl: "assets/airpods3.png",
                    isSelected: false,
                  ),
                  SizedBox(width: 10.0),
                  SuggestedImage(
                    imageUrl: "assets/airpods4.png",
                    isSelected: false,
                  ),
                  SizedBox(width: 20.0),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200],
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: Text(
                            "Features",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.0, bottom: 10.0),
                          child: Container(
                            height: 38.0,
                            width: 38.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[300],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.amber[800],
                                size: 28.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                    FeatureText(
                        "Active noise canncellation for immersive and clear sound"),
                    SizedBox(height: 15.0),
                    FeatureText("Sweat and water resistant"),
                    SizedBox(height: 15.0),
                    FeatureText(
                        "Adaptive EQ automatically tunes music to the shape of your ear"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                "Product Description",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey[200],
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: DescriptionText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

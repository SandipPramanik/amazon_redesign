import 'package:amazonredesign/screens/product_details.dart';
import 'package:flutter/material.dart';

class HotDealsProduct extends StatelessWidget {
  final String productName;
  final String imageUrl;
  final String companyName;
  final String price;
  final String estimatedDelivery;

  HotDealsProduct(
      {this.productName,
      this.imageUrl,
      this.companyName,
      this.price,
      this.estimatedDelivery});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProductDetails(
                imageUrl: imageUrl,
                productName: productName,
                productCompany: companyName,
                productPrice: price,
                estimatedDelivery: estimatedDelivery,
              )));
        },
        child: Container(
          width: 250.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200]),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[50],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image(
                          image: AssetImage(imageUrl),
                          height: 120.0,
                          width: 120.0,
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        right: 20.0,
                        child: Container(
                          child: Icon(
                            Icons.star,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                height: 60.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          productName,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          price,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          companyName,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                        Text(
                          estimatedDelivery,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: CollectionItem(
                  imageUrl: "assets/masks.png",
                  title: "Masks, PPEs, sanitizers & more",
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: CollectionItem(
                  imageUrl: "assets/ayurvedic_essentials.jpg",
                  title: "Ayurvedic Essentials",
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Expanded(
                child: CollectionItem(
                  imageUrl: "assets/snacks.jpg",
                  title: "Healthy snacks",
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: CollectionItem(
                  imageUrl: "assets/essentials.jpg",
                  title: "Made in India store",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CollectionItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  CollectionItem({
    this.imageUrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(imageUrl),
              height: 130.0,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

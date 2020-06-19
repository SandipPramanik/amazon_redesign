import 'package:flutter/material.dart';

class SuggestedImage extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  SuggestedImage({
    this.imageUrl,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: isSelected
            ? Border.all(color: Colors.amber[800], width: 2.0)
            : Border.all(color: Colors.grey[400], width: 1.5),
      ),
      padding: EdgeInsets.all(10.0),
      child: Image(image: AssetImage(imageUrl)),
    );
  }
}

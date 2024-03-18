import 'package:flutter/material.dart';

class OnBoardingImage extends StatelessWidget {
  final String image;
  const OnBoardingImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
    );
  }
}

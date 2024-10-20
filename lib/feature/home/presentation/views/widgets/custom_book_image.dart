import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amber,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesTestImage),
          ),
        ),
      ),
    );
  }
}

import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        AspectRatio(
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
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10.0, bottom: 14),
          child: CircleAvatar(
            backgroundColor: Colors.white38,
            child: Icon(
              FontAwesomeIcons.play,
              size: 10,
            ),
          ),
        ),
      ],
    );
  }
}

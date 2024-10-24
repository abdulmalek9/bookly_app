import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CustomBookImage(
          imageUrl: imageUrl,
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

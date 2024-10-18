import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController slideController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initAnmation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    slideController.dispose();

    Future.delayed(
        const Duration(
          seconds: kDurationValue,
        ),
        () {});
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            Assets.imagesLogo,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Read Free Books",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void initAnmation() {
    slideController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(slideController);
    animation.addListener(() {
      setState(() {});
    });
    slideController.forward();
  }
}

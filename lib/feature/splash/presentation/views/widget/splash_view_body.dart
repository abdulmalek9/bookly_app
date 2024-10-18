import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    navegationFunction();
  }

  void navegationFunction() {
    Future.delayed(
        const Duration(
          seconds: kDurationValue,
        ), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const HomeView()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    slideController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
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

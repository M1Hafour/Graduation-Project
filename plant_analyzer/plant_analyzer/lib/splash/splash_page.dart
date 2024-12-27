import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:plant_analyzer/core/presentation/routes/app_router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green.shade800,
      body: Center(
          child: Container(
        width: size.width * 0.9,
        height: size.height * 0.9,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/logo2.png'),
              fit: BoxFit.contain),
        ),
      )
              .animate(
                onComplete: (controller) =>
                    AutoRouter.of(context).replace(HomeRoute()),
              )
              .scale(
                  delay: 200.milliseconds,
                  duration: 1000.milliseconds,
                  curve: Curves.easeIn)
              .fadeIn(duration: 1000.milliseconds, curve: Curves.easeOut)

          // .then(delay: 1.seconds)
          ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../bloc/splash_screen_bloc.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    this._dispatchEvent(
        context); // This will dispatch the navigateToHomeScreen event.
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animation/127854-iot-digital-farming-with-drone.json'),
      ),
    );

  }
  //This method will dispatch the navigateToHomeScreen event.
  void _dispatchEvent(BuildContext context) {
    BlocProvider.of<SplashScreenBloc>(context).add(
      NavigateToHomeScreenEvent(),
    );
  }
}

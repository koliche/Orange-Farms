import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:orange_farms/pages/home/home.dart';
import 'package:orange_farms/pages/splash_screen/views/splash_screen_wiedget.dart';

import 'bloc/splash_screen_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenBloc(),
      child: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        // color: Colors.orange,
        child: Center(
          // Here I have used BlocBuilder, but instead you can also use BlocListner as well.
          child: BlocBuilder<SplashScreenBloc, SplashScreenState>(
            builder: (context, state) {
              if ((state is Initial) || (state is Loading)) {
                return SplashScreenWidget();
              } else if (state is Loaded) {
                return HomePage();
              }
              else{
                return Center(child: Text('ERROR IN THE BLOC WORCK !',style: TextStyle(color: Colors.red),));
              }
            },
          ),
        ),
      ),
    );
  }
}

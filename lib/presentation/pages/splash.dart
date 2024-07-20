import 'package:flutter/material.dart';
import 'package:todo_list/presentation/pages/splashtwo.dart';
import 'package:todo_list/presentation/widget/theme.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)) .then((value) => Navigator.push(context, 
    MaterialPageRoute(builder: (context) => const Splashtwo(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff26355D),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset('assets/images/splashscr.png'),
            Text('RT07 \nRumah Kita', style: semiboldwhitetext.copyWith(fontSize: 25),),
          ]
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../../constants/asset_paths.dart';
import '../../widgets/loading.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(logo, width: 120,),
          SizedBox(height: 10,),
          Loading()
        ],
      ),
    );
  }
}

import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Delivery());
}

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData().copyWith(
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData().textTheme),
      ),
    );
  }
}

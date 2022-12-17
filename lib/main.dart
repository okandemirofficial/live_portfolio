import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_portfolio/home_page/home_page_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        textTheme: TextTheme(
          headline1: GoogleFonts.bebasNeue(
              fontWeight: FontWeight.w700, letterSpacing: 5),
          headline2: GoogleFonts.bebasNeue(
              fontWeight: FontWeight.w700, letterSpacing: 4),
          headline3: GoogleFonts.bebasNeue(
              fontWeight: FontWeight.w700, letterSpacing: 3),
          headline4: GoogleFonts.bebasNeue(letterSpacing: 2),
          headline5: GoogleFonts.bebasNeue(letterSpacing: 2),
          headline6: GoogleFonts.roboto(),
          subtitle1: GoogleFonts.roboto(),
          subtitle2: GoogleFonts.roboto(),
          bodyText1: GoogleFonts.roboto(),
          bodyText2: GoogleFonts.roboto(),
          caption: GoogleFonts.roboto(),
          button: GoogleFonts.roboto(),
          overline: GoogleFonts.roboto(),
        ).apply(displayColor: Colors.white70, bodyColor: Colors.white70),
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.brown,
            onPrimary: Colors.white60,
            secondary: Colors.amber,
            onSecondary: Colors.white60,
            error: Colors.red,
            onError: Colors.white,
            background: Colors.black87,
            onBackground: Colors.white70,
            surface: Colors.black87,
            onSurface: Colors.white70),
      ),
      home: ResponsiveWrapper.builder(
        const HomePageView(),
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
    );
  }
}

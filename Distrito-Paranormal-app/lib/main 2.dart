import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Widgets/BottomBar.dart';
import './Widgets/Search.dart';
import './Widgets/LugaresTendencia2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFF141218),
          extendBody: true,
          body: Stack(
            children: [
              // Widget principal con scroll para las dimensiones fijas 440x959
              Positioned.fill(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: SizedBox(
                    width: double.infinity,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                      child: const LugaresEnTendencia2(),
                    ),
                  ),
                ),
              ),

              // Barra de búsqueda flotante encima
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SafeArea(
                  bottom: false,
                  child: Group40(),
                ),
              ),
            ],
          ),
          bottomNavigationBar: const NavigationBarVerticalItems(),
        ),
      ),
    );
  }
}
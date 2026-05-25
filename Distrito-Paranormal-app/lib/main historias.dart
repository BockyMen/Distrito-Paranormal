import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import './Widgets/BottomBar.dart'; 
import './Widgets/Historias.dart'; 

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
          body: const HistoriasPopulares(),
          bottomNavigationBar: const NavigationBarVerticalItems(),
        ),
      ),
    );
  }
}
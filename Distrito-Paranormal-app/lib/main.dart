import 'package:distrito_paranormal/Widgets/Bitacora.dart';
import 'package:distrito_paranormal/Widgets/Eventos.dart';
import 'package:distrito_paranormal/Widgets/Foros.dart';
import 'package:distrito_paranormal/Widgets/Historias.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import './Widgets/BottomBar.dart'; 
import './Widgets/Search.dart'; 
import './Widgets/Desplegable.dart';
import './Widgets/Cementeriocentral.dart';

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
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  final List<Widget> _pages =[
    const Cementeriocentral(),
    const HistoriasPopulares(),
    const Foro(),
    const Eventos(),
    const BitCora(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141218),
      body: Stack(
        children: [
          const Positioned.fill(child: Image4()),
          Positioned.fill(child: _pages[_selectedIndex]),
        ],
      ),
      bottomNavigationBar: NavigationBarVerticalItems(
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class Image4 extends StatelessWidget {
  const Image4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779640581/image_4_wgfybt.jpg"),
          fit: BoxFit.cover, 
        ),
      ),
    );
  }
}
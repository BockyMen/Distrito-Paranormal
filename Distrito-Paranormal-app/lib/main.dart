import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'Widgets/BottomBar.dart'; 
import 'Widgets/Search.dart'; 
import 'Widgets/Desplegable.dart'; // Contiene el widget Lista()
import 'Widgets/Cementeriocentral.dart';  // Asegúrate de que tu clase dentro de este archivo se llame Cementeriocentral

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 💡 CAMBIA ESTA VARIABLE PARA PROBAR CADA INTERFAZ DE FIGMA:
    // true  -> Muestra el panel de "Lugares populares" (Lista)
    // false -> Muestra el panel de detalles del "Cementerio Central" (Cementeriocentral)
    const bool mostrarListaTendencias = false; 

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
          body: Stack(
            children: [
              // 1. El mapa de fondo (Capa inferior)
              const Positioned.fill(
                child: Image4(),
              ),
              
              // 2. El panel inferior dinámico (Capa intermedia)
              // 🛠️ CORREGIDO: Se quitó el 'const' de aquí para que permita la condición sin dar error
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: mostrarListaTendencias ? const Lista() : const Cementeriocentral(),
              ),

              // 3. El buscador superior (Capa superior)
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
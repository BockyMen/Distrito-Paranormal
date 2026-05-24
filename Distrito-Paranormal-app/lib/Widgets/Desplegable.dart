import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          // Reducimos la altura fija restrictiva para que el contenido respire bien
          padding: const EdgeInsets.only(top: 24, bottom: 20),
          decoration: const ShapeDecoration(
            color: Color(0xFF252525),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // Bordes más redondeados como en tu Figma
                topRight: Radius.circular(30),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 10,
                offset: Offset(0, -4), // Sombra hacia arriba para efecto BottomSheet
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // --- TÍTULO ---
              const Text(
                'Lugares populares',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20, // Un poco más grande para que resalte como en la muestra
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.50,
                ),
              ),
              
              const SizedBox(height: 24), // Espaciado controlado entre título y tarjetas

              // --- CARRUSEL DE TARJETAS (REPARADO) ---
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CardItem(
                      title: 'Cementerio central',
                      imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779642713/Rectangle_7_efp6s4.jpg",
                    ),
                    SizedBox(width: 16), 
                    CardItem(
                      title: 'Nombre del lugar',
                      imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779640581/image_4_wgfybt.jpg",
                    ),
                    SizedBox(width: 16),
                    CardItem(
                      title: 'Nombre del lugar',
                      imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779640581/image_4_wgfybt.jpg",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24), // Espaciado controlado antes del botón

              // --- BOTÓN VER TODAS LAS TENDENCIAS ---
              Container(
                width: 340,
                height: 48, // Altura estándar de botón móvil estilizado
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: const Color(0xFF5D5D5D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'Ver todas las tendencias',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Componente de Tarjeta reparado con Stack interno para que el texto flote sobre la imagen
class CardItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CardItem({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 240,
      decoration: ShapeDecoration(
        color: const Color(0xFF595959),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            // 1. La imagen ocupa TODO el fondo de la tarjeta
            Positioned.fill(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: Colors.grey[700]); // Fondo de respaldo si falla la URL
                },
              ),
            ),
            
            // 2. Degradado oscuro abajo para que las letras blancas se lean perfectamente
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.8),
                    ],
                    stops: const [0.6, 1.0],
                  ),
                ),
              ),
            ),
            
            // 3. Textos e información (Abajo a la izquierda)
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Text(
                        '4.9 (30)',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      const Spacer(),
                      // Icono pequeño opcional de estrella
                      Icon(Icons.star, color: Colors.amber[400], size: 14),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
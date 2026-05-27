import 'package:flutter/material.dart';
import 'package:distrito_paranormal/Widgets/Search.dart';

class LugaresEnTendencia extends StatelessWidget {
  const LugaresEnTendencia({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.60,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779640581/image_4_wgfybt.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.52,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const ShapeDecoration(
                color: Color(0xFF252525),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Lugares populares',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        _buildLugarCard(
                          'Cementerio Central',
                          '4.9',
                          '(30)',
                          'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779642713/Rectangle_7_efp6s4.jpg',
                        ),
                        const SizedBox(width: 14),
                        _buildLugarCard(
                          'Palacio de San Francisco',
                          '4.5',
                          '(24)',
                          'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779845910/Rectangle_7_unigus.png',
                        ),
                        const SizedBox(width: 14),
                        _buildLugarCard(
                          'Clínica Central',
                          '4.9',
                          '(645)',
                          'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779845910/Rectangle_72_ypn6js.png',
                        ),
                        const SizedBox(width: 14),
                        _buildLugarCard(
                          'Hospital San Juan de Dios',
                          '4.7',
                          '(12)',
                          'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779845910/Rectangle_7_1_v3a7lp.png',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3A3A3A),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Ver todas las tendencias',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.chevron_right, color: Colors.white, size: 18),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
    );
  }
  Widget _buildLugarCard(String titulo, String rating, String count, String imageUrl) {
    return Container(
      width: 175,
      height: 200,
      decoration: ShapeDecoration(
        color: const Color(0xFF595959),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x40000000),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.network(
              imageUrl,
              width: 175,
              height: 140,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                width: 175,
                height: 140,
                color: const Color(0xFF404040),
                child: const Icon(Icons.image_not_supported, color: Colors.white38),
              ),
            ),
          ),

          // Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(Icons.star, color: Color.fromARGB(255, 88, 0, 0), size: 12),
                    const SizedBox(width: 3),
                    Text(
                      '$rating $count',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
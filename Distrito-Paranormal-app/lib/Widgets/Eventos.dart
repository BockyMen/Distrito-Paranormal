import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  const Eventos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F2F2F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Eventos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                _buildEventoCard(
                  titulo: 'Caceria de Fantasmas: Luna Llena',
                  fecha: 'JUL 12, 10:00 PM',
                  lugar: 'Lugar: Cementerio Bram S...',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779675904/Rectangle_23_skhexx.png',
                ),
                const SizedBox(height: 16),

                _buildEventoCard(
                  titulo: 'Exploracion Urbana: Fabrica Abandonada',
                  fecha: 'SEP 08, 10:00 PM',
                  lugar: 'Lugar: Fabrica Julio Perez...',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779675903/Rectangle_27_rrbct9.png',
                ),
                const SizedBox(height: 16),

                _buildEventoCard(
                  titulo: 'Charla paranormal',
                  fecha: 'AGO 21, 10:00 PM',
                  lugar: 'Lugar: Teatro Jorge Eliécer...',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779676297/Rectangle_27_1_linrvr.png',
                ),
                const SizedBox(height: 16),

                _buildEventoCard(
                  titulo: 'Recorrido por los L.P del centro',
                  fecha: 'OCT 31, 7:00 PM',
                  lugar: 'Lugar: Estacion Jimenez',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779676240/Rectangle_27_2_dara3n.png',
                ),
                const SizedBox(height: 32),
                const Text(
                  'Rutas Guiadas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 325,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779675904/Rectangle_29_oqahyc.png"),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildEventoCard({
    required String titulo,
    required String fecha,
    required String lugar,
    required String imagenUrl,
  }) {
    return Container(
      width: double.infinity,
      height: 216,
      decoration: BoxDecoration(
        color: const Color(0xFF434343),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 160,
            height: 216,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              image: DecorationImage(
                image: NetworkImage(imagenUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titulo,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        fecha,
                        style: const TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        lugar,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on, 
                        color: Color(0xFF979797), 
                        size: 16
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Map Location',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 38,
                    decoration: BoxDecoration(
                      color: const Color(0xFFA60000),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Inscribirse',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
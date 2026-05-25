import 'package:flutter/material.dart';

class HistoriasPopulares extends StatelessWidget {
  const HistoriasPopulares({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF2F2F2F),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Historias Populares',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            // Lista de tarjetas
            const HistoriaCard(
              title: 'LA MUJER GRIS DEL CEMENTERIO CENTRAL',
              descripcion:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
              visitas: '5K Visitas',
              terror: 'Terror: 5 Calaveras',
              nivel: 'Alto',
              imageUrl:
                  'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779669516/Rectangle_19_hdrins.png',
            ),
            const SizedBox(height: 30),

            const HistoriaCard(
              title: 'LA SOMBRA DETRAS DEL HOSPITAL ABANDONADO',
              descripcion:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
              visitas: '5K Visitas',
              terror: 'Terror: 5 Calaveras',
              nivel: 'Alto',
              imageUrl:
                  'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779669490/Rectangle_21_gey0uu.png',
            ),
            const SizedBox(height: 30),

            const HistoriaCard(
              title: 'TRANSMILENIO FANTASMA (RUTA G66)',
              descripcion:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
              visitas: '5K Visitas',
              terror: 'Terror: 5 Calaveras',
              nivel: 'Alto',
              imageUrl:
                  'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779670009/Rectangle_19_1_lr0is2.png',
            ),
            const SizedBox(height: 30),

            const HistoriaCard(
              title: 'EL TEATRO JORGE ELIÉCER GAITÁN Y SUS FANTASMAS',
              descripcion:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
              visitas: '5K Visitas',
              terror: 'Terror: 5 Calaveras',
              nivel: 'Alto',
              imageUrl:
                  'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779670009/Rectangle_19_2_njqhpm.png',
            ),
          ],
        ),
      ),
    );
  }
}
class HistoriaCard extends StatelessWidget {
  final String title;
  final String descripcion;
  final String visitas;
  final String terror;
  final String nivel;
  final String imageUrl;

  const HistoriaCard({
    super.key,
    required this.title,
    required this.descripcion,
    required this.visitas,
    required this.terror,
    required this.nivel,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFF434343),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 225,
            width: double.infinity,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  descripcion,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 15,
                  runSpacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      visitas,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      terror,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Nivel Activo: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          nivel,
                          style: const TextStyle(
                            color: Color(0xFF5B0000),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
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

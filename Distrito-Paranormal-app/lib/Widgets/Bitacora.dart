import 'package:flutter/material.dart';

class BitCora extends StatelessWidget {
  const BitCora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818), // Fondo oscuro de la Bitácora
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779677056/Ellipse_1_sotmrz.png",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => 
                              const Icon(Icons.account_circle, color: Colors.white, size: 40),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      '¡Bienvenido Daniel!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF595959),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Color(0xFF979797), size: 22),
                      const SizedBox(width: 10),
                      const Text(
                        'Buscar registro....',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Text(
                      'Recientes',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Transform.rotate(
                      angle: 1.57,
                      child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF979797), size: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                _buildRegistroCard(
                  titulo: 'Registro 20 May - Susurros Subterraneos',
                  nota: 'Lorem Ipsum is simply dummy text of the printing',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779678800/WhatsApp_Image_2026-05-24_at_10.11.53_PM_cwkfwr.jpg',
                  imagenAliniacionIzquierda: true,
                  mostrarControlesAudio: true,
                  iconosAdicionales: [
                    "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779677055/Audio_Wave_xpjrnw.png", 
                    "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779677055/Audio_Wave_xpjrnw.png",
                    "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779677054/Audio_Wave_1_kpyinr.png",
                  ],
                ),
                const SizedBox(height: 28),
                
                _buildRegistroCard(
                  titulo: 'Registro 16 May - Presencia Inquietante',
                  nota: 'Lorem Ipsum is simply dummy text of the printing',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779678799/WhatsApp_Image_2026-05-24_at_10.11.21_PM_qsgevt.jpg',
                  imagenAliniacionIzquierda: false,
                  mostrarControlesAudio: false,
                ),
                const SizedBox(height: 28),

                _buildRegistroCard(
                  titulo: 'Registro 29 Abr - Avistamiento de Platillo Volador',
                  nota: 'Lorem Ipsum is simply dummy text of the printing',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779678798/WhatsApp_Image_2026-05-24_at_10.10.02_PM_iivm56.jpg',
                  imagenAliniacionIzquierda: true,
                  mostrarControlesAudio: false,
                ),
                const SizedBox(height: 28),
                
                _buildRegistroCard(
                  titulo: 'Registro 14 Mar - ¿Me estan haciendo brujeria?',
                  nota: 'Lorem Ipsum is simply dummy text of the printing',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779678797/WhatsApp_Image_2026-05-24_at_10.05.30_PM_burwri.jpg',
                  imagenAliniacionIzquierda: false,
                  mostrarControlesAudio: false,
                ),
                const SizedBox(height: 28),
                _buildRegistroCard(
                  titulo: 'Registro 02 Mar - Sotanos de la jimenez',
                  nota: 'Lorem Ipsum is simply dummy text of the printing',
                  imagenUrl: 'https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779678796/WhatsApp_Image_2026-05-24_at_10.05.30_PM_1_vdhxk0.jpg',
                  imagenAliniacionIzquierda: true,
                  mostrarControlesAudio: true,
                  iconosAdicionales: [
                    "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779677055/Audio_Wave_xpjrnw.png",
                    "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779677055/Audio_Wave_xpjrnw.png",
                    "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779677054/Audio_Wave_1_kpyinr.png",
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegistroCard({
    required String titulo,
    required String nota,
    required String imagenUrl,
    required bool imagenAliniacionIzquierda,
    required bool mostrarControlesAudio,
    List<String>? iconosAdicionales,
  }) {
    Widget fotoPolaroid = Transform.translate(
      offset: Offset(imagenAliniacionIzquierda ? -6.0 : 6.0, 0),
      child: Transform.rotate(
        angle: imagenAliniacionIzquierda ? -0.06 : 0.06,
        child: Container(
          width: 125,
          height: 175,
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFEBEBEB),
            borderRadius: BorderRadius.circular(2),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(1, 3),
              )
            ],
          ),
          child: Container(
            color: Colors.grey[400],
            child: Image.network(
              imagenUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Center(
                child: Icon(Icons.broken_image, color: Colors.black54, size: 32),
              ),
            ),
          ),
        ),
      ),
    );
    Widget contenidoTexto = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: 8),
        if (mostrarControlesAudio) ...[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 26,
                  height: 26,
                  decoration: const BoxDecoration(
                    color: Color(0xFFA60000),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.play_arrow, color: Colors.white, size: 16),
                ),
                const SizedBox(width: 6),
                if (iconosAdicionales != null)
                  ...iconosAdicionales.map((url) => Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Image.network(
                          url,
                          width: 22,
                          height: 22,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
                        ),
                      )),
              ],
            ),
          ),
          const SizedBox(height: 6),
        ],  
        const Text(
          'Notas:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          nota,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 11,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
    return Container(
      width: double.infinity,
      height: 155,
      clipBehavior: Clip.none, 
      decoration: BoxDecoration(
        color: const Color(0xFFE3D4D4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: imagenAliniacionIzquierda ? 0.0 : 16.0,
          right: imagenAliniacionIzquierda ? 16.0 : 0.0,
        ),
        child: Row(
          children: [
            if (imagenAliniacionIzquierda) ...[
              fotoPolaroid,
              const SizedBox(width: 10),
              Expanded(child: contenidoTexto),
            ] else ...[
              Expanded(child: contenidoTexto),
              const SizedBox(width: 10),
              fotoPolaroid,
            ],
          ],
        ),
      ),
    );
  }
}
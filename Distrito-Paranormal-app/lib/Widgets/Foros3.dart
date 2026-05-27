import 'package:flutter/material.dart';

class Foro3 extends StatelessWidget {
  const Foro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F2F2F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 320,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779674455/Rectangle_12_udkhbp.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mi experiencia visitando Cici Aquapark',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'By Axda',
                      style: TextStyle(
                        color: Color(0xFFE0E0E0),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.thumb_up, color: Colors.white, size: 16),
                              SizedBox(width: 6),
                              Text(
                                'Like',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.comment, color: Colors.white, size: 16),
                              SizedBox(width: 6),
                              Text(
                                'Comment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'El parque acuático lucía desierto, pero el eco del agua deslizándose por los toboganes era ensordecedor. Axda recorría el lugar fuera de temporada, sintiendo el frío metálico de las estructuras bajo sus dedos. Lo que comenzó como una exploración casual se convirtió en una pesadilla cuando, al subir al tobogán más alto, escuchó risas infantiles que provenían de las tuberías cerradas. No había nadie más en el recinto, pero al mirar hacia abajo, vio cómo el agua en la piscina grande comenzaba a formar patrones geométricos imposibles, como si el parque estuviera cobrando vida propia para jugar un último juego antes de ser clausurado para siempre.',
                      style: TextStyle(
                        color: Color(0xFFDCDCDC),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        height: 1.4, 
                      ),
                    ),
                    const SizedBox(height: 40),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_circle_left_outlined,
                        color: Colors.white,
                        size: 48,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
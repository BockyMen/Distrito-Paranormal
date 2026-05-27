import 'package:flutter/material.dart';

class Foro2 extends StatelessWidget {
  const Foro2({super.key});

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
                    image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779674278/Rectangle_12_1_xrylvc.png"),
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
                      'Hay algo extraño en los tuneles de la Universidad Nacional',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'By J24',
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
                      'J24 siempre evitaba mirar directamente a la entrada de la universidad después de las seis de la tarde. El letrero que colgaba sobre los pilares parecía distorsionarse bajo la luz de los postes, cambiando las letras que formaban el nombre de la institución. Algunos decían que era un fallo en la realidad, otros que era una broma pesada de los estudiantes de artes, pero J24 sabía la verdad. Cada vez que alguien se sentaba en los bancos de abajo, el reflejo en las ventanas no mostraba a los estudiantes, sino a figuras que caminaban en una dirección distinta a la suya, como si existiera un campus paralelo esperando ser descubierto.',
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
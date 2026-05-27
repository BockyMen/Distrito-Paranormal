import 'package:flutter/material.dart';

class Foro1 extends StatelessWidget {
  const Foro1({super.key});

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
                    image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779673567/Rectangle_12_ylxesf.png"),
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
                      '¿El cementerio está embrujado?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'By Bockymen',
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
                      'El aire en el cementerio siempre era pesado, cargado con el aroma de la tierra húmeda tras la lluvia. Bockymen caminaba por el pasillo central, observando cómo las sombras de los árboles se alargaban sobre las lápidas antiguas. Para la mayoría, era un lugar de duelo, pero para él, era un libro abierto. Cada nombre grabado en la piedra contaba una historia, un secreto que el tiempo intentaba borrar. Esa tarde, mientras fotografiaba las rejas oxidadas, sintió que no estaba solo; no era miedo, sino la sensación de que, finalmente, alguien o algo estaba escuchando sus preguntas sobre lo que sucede después.',
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
import 'package:flutter/material.dart';

class Foro extends StatelessWidget {
  const Foro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF2F2F2F),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  'Filters',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 23,
                  height: 23,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779670479/Tune_f451gz.png"), 
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            
            // TARJETAS
            const ForoCard(
              title: '¿El cementerio es...',
              author: 'By Bockymen',
              comments: '5 Comments',
              imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779669490/Group_11_rnr7zv.png",
            ),
            const SizedBox(height: 30),
            
            const ForoCard(
              title: 'Titulo',
              author: 'By J24',
              comments: '5 Comments',
              imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779670644/Group_11_rko9tl.png",
            ),
            const SizedBox(height: 30),

            const ForoCard(
              title: 'Titulo',
              author: 'By Axda',
              comments: '5 Comments',
              imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779670643/Group_11_1_p9nypm.png",
            ),
            const SizedBox(height: 30),
            const ForoCard(
              title: 'Titulo',
              author: 'By JUB3',
              comments: '5 Comments',
              imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779671602/Group_11_fvkvmc.png",
            ),
            const SizedBox(height: 30),
            const ForoCard(
              title: 'Titulo',
              author: 'By Indiivar',
              comments: '5 Comments',
              imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779671601/Group_11_1_ka0okk.png",
            ),
            const SizedBox(height: 30),
            const ForoCard(
              title: 'Titulo',
              author: 'By ZeroTwo',
              comments: '5 Comments',
              imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779671601/Group_11_2_sxlfx4.png",
            ),
            const SizedBox(height: 30),
            const ForoCard(
              title: 'Titulo',
              author: 'By Bloxlink',
              comments: '5 Comments',
              imageUrl: "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779671601/Rectangle_8_rmvrn9.png",
            ),
          ],
        ),
      ),
    );
  }

  // BARRA DE BÚSQUEDA
  Widget _buildSearchBar() {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: ShapeDecoration(
        color: const Color(0xFF2B2930),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Search here',
            style: TextStyle(
              color: Color(0xFFCAC4D0),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.50,
            ),
          ),
          // ICONO DE BÚSQUEDA AÑADIDO AQUÍ
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.search,
              color: Color(0xFFCAC4D0), // Mismo color grisecito del texto
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}

class ForoCard extends StatelessWidget {
  final String title;
  final String author;
  final String comments;
  final String imageUrl;

  const ForoCard({
    super.key,
    required this.title,
    required this.author,
    required this.comments,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 149, 
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 154,
            height: 149,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 19), 
          Expanded(
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
                const SizedBox(height: 5),
                Text(
                  author,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 27,
                      height: 27,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779670762/Chat_fhezxb.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      comments,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
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
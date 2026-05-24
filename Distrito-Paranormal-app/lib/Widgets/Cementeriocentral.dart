import 'package:flutter/material.dart';

class Cementeriocentral extends StatelessWidget {
  const Cementeriocentral({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity, 
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: const ShapeDecoration(
            color: Color(0xFF252525),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, -4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cementerio Central',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                  letterSpacing: 0.50,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text(
                    '4.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 2,
                      letterSpacing: 0.50,
                ),
              ),
                  const SizedBox(width: 4),
                  Row(
                    children: List.generate(5, (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Icon(Icons.star, color: Color(0xFF5B0000), size: 15),
                    )),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    '(194) · ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 2,
                      letterSpacing: 0.50,
                    ),
                  ),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779644719/Bus_jrxax0.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  
                  const Text(
                    '1 hr 35 min',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 2,
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 180,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779643225/Rectangle_8_wmt0yg.jpg"),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          height: 84,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779643224/Rectangle_9_gto80s.jpg"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          height: 84,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779643224/Rectangle_10_rconbi.jpg"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 36,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.directions, color: Color(0xFF5B0000), size: 16),
                          SizedBox(width: 4),
                          Text(
                            'Directions',
                            style: TextStyle(
                              color: Color(0xFF5B0000),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 36,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.play_arrow, color: Color(0xFF434343), size: 16),
                          SizedBox(width: 4),
                          Text(
                            'Start',
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 36,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.call, color: Color(0xFF434343), size: 16),
                          SizedBox(width: 4),
                          Text(
                            'Call',
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
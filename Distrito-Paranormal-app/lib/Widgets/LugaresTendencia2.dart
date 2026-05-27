import 'package:flutter/material.dart';

class LugaresEnTendencia2 extends StatelessWidget {
  const LugaresEnTendencia2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 440,
          height: 959,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: -10,
                top: 0,
                child: Container(
                  width: 450,
                  height: 970,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, -0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [Color(0xFF282828), Colors.black],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 440,
                  height: 908,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779640581/image_4_wgfybt.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 543,
                child: Container(
                  width: 440,
                  height: 416,
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
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 16,
                        top: 16,
                        child: Text(
                          'Cementerio Central',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 44,
                        child: Row(
                          children: const [
                            Icon(Icons.star, color: Color.fromARGB(255, 90, 0, 0), size: 17),
                            SizedBox(width: 4),
                            Text(
                              '4.0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.50,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              '(194) ·',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.50,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.bus_alert, color: Colors.white, size: 14),
                            SizedBox(width: 4),
                            Text(
                              '1 hr 35 min',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 76,
                        child: Row(
                          children: [
                            Container(
                              width: 131,
                              height: 29,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.map, color: Color(0xFF5B0000), size: 18),
                                  SizedBox(width: 4),
                                  Text(
                                    'Directions',
                                    style: TextStyle(
                                      color: Color(0xFF5B0000),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 101,
                              height: 29,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.navigation, color: Color(0xFF434343), size: 18),
                                  SizedBox(width: 4),
                                  Text(
                                    'Start',
                                    style: TextStyle(
                                      color: Color(0xFF434343),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 101,
                              height: 29,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.phone, color: Color(0xFF434343), size: 18),
                                  SizedBox(width: 4),
                                  Text(
                                    'Call',
                                    style: TextStyle(
                                      color: Color(0xFF434343),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 120,
                        child: Container(
                          width: 215,
                          height: 280,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779643225/Rectangle_8_wmt0yg.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 243,
                        top: 120,
                        child: Container(
                          width: 181,
                          height: 135,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779643224/Rectangle_9_gto80s.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 243,
                        top: 265,
                        child: Container(
                          width: 181,
                          height: 135,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779643224/Rectangle_10_rconbi.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
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
        ),
      ],
    );
  }
}
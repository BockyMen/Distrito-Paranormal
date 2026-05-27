import 'package:flutter/material.dart';

class NavigationBarVerticalItems extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  const NavigationBarVerticalItems({super.key, required this.onItemSelected});

  @override
  State<NavigationBarVerticalItems> createState() => _NavigationBarVerticalItemsState();
}

class _NavigationBarVerticalItemsState extends State<NavigationBarVerticalItems> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() => _selectedIndex = index);
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity, 
          height: 100,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Color(0xFF211F26),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded( 
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _onTap(0),
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    _selectedIndex == 0 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    BlendMode.srcIn,
                                  ),
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779587435/Headstone_ssmuhv.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Lugares',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _selectedIndex == 0 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: _selectedIndex == 0 ? FontWeight.bold : FontWeight.w500,
                                    height: 1.33,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _onTap(1),
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    _selectedIndex == 1 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    BlendMode.srcIn,
                                  ),
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779587435/Poison_h2hwht.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Historias',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _selectedIndex == 1 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: _selectedIndex == 1 ? FontWeight.bold : FontWeight.w500,
                                    height: 1.33,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _onTap(2),
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    _selectedIndex == 2 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    BlendMode.srcIn,
                                  ),
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779587435/Skull_tqxzgx.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Foro',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _selectedIndex == 2 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: _selectedIndex == 2 ? FontWeight.bold : FontWeight.w500,
                                    height: 1.33,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _onTap(3),
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    _selectedIndex == 3 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    BlendMode.srcIn,
                                  ),
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779638978/Treasure_Map_khhbe8.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Eventos',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _selectedIndex == 3 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: _selectedIndex == 3 ? FontWeight.bold : FontWeight.w500,
                                    height: 1.33,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _onTap(4),
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    _selectedIndex == 4 ? Colors.white : const Color.fromARGB(255, 67, 67, 67),
                                    BlendMode.srcIn,
                                  ),
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://res.cloudinary.com/dcuytactz/image/upload/q_auto/f_auto/v1779587435/Repository_gscdvh.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Bitácora',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _selectedIndex == 4 ? Colors.white : Color.fromARGB(255, 67, 67, 67),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: _selectedIndex == 4 ? FontWeight.bold : FontWeight.w500,
                                    height: 1.33,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
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
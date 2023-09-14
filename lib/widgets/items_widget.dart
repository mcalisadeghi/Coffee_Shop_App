import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/sing_item_screen.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});
  final List img = [
    'Latte',
    'Espresso' 'Black Coffee',
    'cold coffee',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: <Widget>[
        for (int i = 0; i < img.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 13,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              color: const Color(
                0xFF212325,
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(
                    0.5,
                  ),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SingleItemScreen(img[i]),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(
                      10,
                    ),
                    child: Image.asset(
                      'assets/images/${img[i]}.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Text(
                          img[i],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          img[i],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        '\$30',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(
                          5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFFE57734,
                          ),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: const Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

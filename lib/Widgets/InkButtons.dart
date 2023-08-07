import 'package:flutter/material.dart';

class InkButtonOutline extends StatelessWidget {

final String texto;
final VoidCallback onTap;


  const InkButtonOutline({super.key, 
    required this.texto,
    required this.onTap,

  });
 
  Widget build(BuildContext context) {
    return InkWell(
            onTap: onTap,
            child: Ink(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                            color: const Color.fromARGB(255, 217, 162, 162),
                                            width: 2.0),
                                            borderRadius: BorderRadius.circular(50)
                                ),
                    child: Center(
                            child: Text(
                            texto,
                            style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 217, 162, 162),
                                  ),
                                                            )
                           ),
                  ),
          );
  }
}

class InkButtonFilled extends StatelessWidget {

final String texto;
final VoidCallback onTap;


  InkButtonFilled({
    required this.texto,
    required this.onTap,

  });
 
  Widget build(BuildContext context) {
    return InkWell(
            onTap: onTap,
            child: Ink(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 217, 162, 162),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                    child: Center(
                            child: Text(texto,
                                    style: const TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          ),
                                  )
                          ),
                  ),
          );
  }
}
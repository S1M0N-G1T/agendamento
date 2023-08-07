import 'package:flutter/material.dart';

class BotaoIcone extends StatelessWidget {
 final String texto;
 final VoidCallback onPressed;
 final Icon icon;



  BotaoIcone({
    required this.texto,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
            icon: icon,
            onPressed: () {},
            label: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(texto,
                            style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                          ),
                  ),
            style: ButtonStyle(
                    foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                    shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: const BorderSide(
                                  color: Color.fromARGB(255, 217, 162, 162),
                                  width: 2.0
                                ),
                        )
                      )
                  )
          );
  }
}

class BotaoIconeImg extends StatelessWidget {
 final String texto;
 final VoidCallback onPressed;
 final Image icon;



  BotaoIconeImg({
    required this.texto,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
            icon: icon,
            onPressed: () {},
            label: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(texto,
                            style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                          ),
                  ),
            style: ButtonStyle(
                    foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                    shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: const BorderSide(
                                  color: Color.fromARGB(255, 217, 162, 162),
                                  width: 2.0
                                ),
                        )
                      )
                  )
          );
  }
}
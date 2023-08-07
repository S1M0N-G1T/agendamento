import 'package:flutter/material.dart';

class ElevatedButtonPadrao extends StatelessWidget {
 final String texto;
 final VoidCallback onPressed;



  ElevatedButtonPadrao({
    required this.texto,
    required this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 217, 162, 162)),
                  shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )
                    )
                    ),
                  onPressed: onPressed,
                  child: Text(
                      texto,
                      style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300
                                    ),
                      ),
          );
  }
}

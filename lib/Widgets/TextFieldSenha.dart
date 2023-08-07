import 'package:flutter/material.dart';

class TextFieldSenha extends StatelessWidget {
  final String label;
  final String campo;
  final void Function(String) onChanged;
  final bool obscureText;

  TextFieldSenha({
    this.obscureText = true,
    required this.label,
    required this.campo,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
            obscureText: true,
            onChanged: onChanged,
            controller: TextEditingController(text: campo),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(color: Color.fromARGB(255, 217, 162, 162)),
              contentPadding: EdgeInsets.only(left: 20),
              enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                                  color: Color.fromARGB(255, 217, 162, 162),
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                              borderRadius: BorderRadius.circular(50),
                            ),
              focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                                  color: Color.fromARGB(255, 217, 162, 162),
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                              borderRadius: BorderRadius.circular(50),
                            ),
              border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                                  color: Color.fromARGB(255, 217, 162, 162),
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                              borderRadius: BorderRadius.circular(50),
                      ),
           
            ),
          );
  }
}

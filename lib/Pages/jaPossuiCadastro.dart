import 'package:flutter/material.dart';
import 'package:agendamento/Pages/cadastro.dart';

class jaPossuiCadastro extends StatefulWidget {
  const jaPossuiCadastro({super.key});

  @override
  State<jaPossuiCadastro> createState() => _jaPossuiCadastroState();
}

class _jaPossuiCadastroState extends State<jaPossuiCadastro> {
  @override
  Widget build(BuildContext context) {
     return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                  height: 150,
                  child: Image.asset("assets/Logo_NR.png")
                  ),
                  Container(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/icone_aviso.png")
                  ),

                  Container(
                    height: 10,
                  ),

                  Container(
                  width: 250,
                  height: 30,
                  child: Align(alignment: Alignment.topCenter,
                    child: Text("USUÁRIO JÁ CADASTRADO",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      color: Color.fromARGB(255, 217, 162, 162),
                      fontWeight: FontWeight.w500,
                    ),),

                    
                  ),
                  ),

                  Container(
                    height: 60,
                  ),

                  SizedBox(
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                       MaterialPageRoute(builder: (context) => cadastro()
                      ));
                    },
                    child: Text(
                      "VOLTAR",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 217, 162, 162)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )))),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
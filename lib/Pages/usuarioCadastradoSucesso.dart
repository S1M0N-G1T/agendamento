import 'package:flutter/material.dart';
import 'package:agendamento/Pages/login.dart';

class usuarioCadastradoSucesso extends StatefulWidget {
  const usuarioCadastradoSucesso({super.key});

  @override
  State<usuarioCadastradoSucesso> createState() => _usuarioCadastradoSucessoState();
}

class _usuarioCadastradoSucessoState extends State<usuarioCadastradoSucesso> {
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
                  child: Image.asset("assets/icone_certo.png")
                  ),

                  Container(
                    height: 10,
                  ),

                  Container(
                  width: 280,
                  height: 30,
                  child: Align(alignment: Alignment.topCenter,
                    child: Text("CADASTRADO COM SUCESSO",
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
                       MaterialPageRoute(builder: (context) => login()
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
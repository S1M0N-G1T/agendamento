import 'package:agendamento/Widgets/BotaoIcone.dart';
import 'package:agendamento/Widgets/ElevatedButtonPadrao.dart';
import 'package:agendamento/Widgets/InkButtons.dart';
import 'package:agendamento/Widgets/NicLogo.dart';
import 'package:agendamento/Widgets/TextFieldPadrao.dart';
import 'package:agendamento/Widgets/TextFieldSenha.dart';
import 'package:flutter/material.dart';
import 'package:agendamento/Pages/cadastroCompleto.dart';
import 'package:agendamento/Pages/jaPossuiCadastro.dart';
import 'package:agendamento/Pages/login.dart';
import 'package:fluttertoast/fluttertoast.dart';


class cadastro extends StatefulWidget {
  const cadastro({super.key});

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  String email = '';
  String senha = '';
  String confSenha = '';

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

              Container(height: 10),

              NicLogo(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkButtonOutline(
                    texto: 'Login',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => login())
                      );
                    }
                  ),
                  
                  Container(width: 20),

                  InkButtonFilled(
                    texto: 'Cadastro', 
                    onTap: () {}
                  ),

                ],
              ),

              const SizedBox( height: 20),

              TextFieldPadrao(
                label: "Email", 
                campo: email, 
                onChanged: (newValue) {
                            email = newValue;
                          },
              ),

              const SizedBox(height: 20),

               TextFieldSenha(
                label: "Senha", 
                campo: senha, 
                onChanged: (newValue) {
                            senha = newValue;
                          },
              ),

              const SizedBox(height: 20),

              TextFieldSenha(
                label: "Confirmar senha",
                campo: confSenha,
                onChanged: (newValue) {
                            confSenha = newValue;
                          },
              ),

              const SizedBox(height: 20),
              
              SizedBox(
                width: 180,
                child: 
                ElevatedButtonPadrao(texto: 'CADASTRAR', onPressed: () {
                      if (email == 'henriquesimon1998@gmail.com' &&
                          senha ==  confSenha) {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => cadastroCompleto())
                      );
                      }
                      else if(email == 'teste' && senha ==  confSenha) {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => jaPossuiCadastro())
                      );
                      }
                      else{
                         Fluttertoast.showToast(
                          msg: "Senhas não conferem!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Color.fromARGB(143, 110, 110, 110),
                          textColor: Colors.white,
                          fontSize: 12.0);
                      }},
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 300,
                height: 50,
                child: BotaoIcone(
                        texto: "Entrar com o Facebook",
                        onPressed: () {},
                        icon: const Icon(
                                Icons.facebook_rounded,
                                color: Colors.blue,
                                size: 33,
                              ),
                      ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: 300,
                height: 50,
                child: BotaoIconeImg(
                        texto: "Entrar com o Google",
                        onPressed: () {},
                        icon: Image.asset('assets/Icon_Google.png'),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

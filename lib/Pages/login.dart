import 'package:agendamento/Widgets/BotaoIcone.dart';
import 'package:agendamento/Widgets/ElevatedButtonPadrao.dart';
import 'package:agendamento/Widgets/InkButtons.dart';
import 'package:agendamento/Widgets/NicLogo.dart';
import 'package:agendamento/Widgets/TextFieldPadrao.dart';
import 'package:flutter/material.dart';
import 'package:agendamento/Pages/cadastro.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String email = '';
  String senha = '';
  bool lembrarSenha = false;

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

              NicLogo(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkButtonFilled(
                    texto: "Login",
                    onTap: (){}
                  ),

                  Container(width: 20),

                  InkButtonOutline(
                    texto: "Cadastro", 
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => cadastro())
                      );}
                    ),

                ],
              ),

              const SizedBox(height: 20),

              TextFieldPadrao(
                label: "Email",
                campo: email,
                onChanged: (newValue) {
                  email = newValue;
                },
              ),

              const SizedBox(height: 20),

              TextFieldPadrao(
                label: "Senha",
                campo: senha,
                onChanged: (newValue) {
                  senha = newValue;
                },
              ),

              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 6, right: 2),
                      width: 30,
                      child: Checkbox(
                          value: this.lembrarSenha,
                          onChanged: (checked) {
                            setState(() {
                              lembrarSenha = !lembrarSenha;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          )),
                    ),

                    const Text('Lembrar senha',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w200,
                              ),
                    ),

                    Container(
                      width: 40,
                      alignment: Alignment.bottomCenter,
                    ),

                    InkWell(
                      onTap: () {
                      },
                      child: Ink(
                        child: const Text(
                          'Esqueci minha senha',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                width: 150,
                child: ElevatedButtonPadrao(
                  texto: "ENTRAR",
                  onPressed: () async {
                      if (email == 'henriquesimon1998@gmail.com' &&
                          senha == '123456') {
                        print('correto');
                      } else {
                        Fluttertoast.showToast(
                          msg: "Usuário ou Senha inválidos!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Color.fromARGB(143, 110, 110, 110),
                          textColor: Colors.white,
                          fontSize: 12.0);
                      }
                    },
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
              ),

             const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}

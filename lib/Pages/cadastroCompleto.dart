import 'package:agendamento/Pages/usuarioCadastradoSucesso.dart';
import 'package:agendamento/Widgets/ElevatedButtonPadrao.dart';
import 'package:agendamento/Widgets/NicLogo.dart';
import 'package:flutter/material.dart';
import '../Widgets/TextFieldPadrao.dart';

class cadastroCompleto extends StatefulWidget {
  const cadastroCompleto({super.key});

  @override
  State<cadastroCompleto> createState() => _cadastroCompletoState();
}

class _cadastroCompletoState extends State<cadastroCompleto> {

//DECLARAÇÃO DE VARIÁVEIS
String nome = '';
String telefone = '';
String cep = '';
String endereco = '';
String numero = '';
String uf = '';
String bairro = '';


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

              const SizedBox(height: 20),

              TextFieldPadrao(
                label: "Nome",
                campo: nome,
                onChanged: (newValue) {
                  nome = newValue;
                },
              ),

              const SizedBox(height: 20),

              TextFieldPadrao(
                label: "Telefone",
                campo: telefone,
                onChanged: (newValue) {
                  telefone = newValue;
                },
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                SizedBox(
                  width: 120,
                  height: 45,
                  child: TextFieldPadrao(
                          label: "CEP",
                          campo: cep,
                          onChanged: (newValue) {
                            cep = newValue;
                          },
                        ),
                ),

                SizedBox(
                  width: 95,
                  height: 45,
                  child: TextFieldPadrao(
                          label: "Número",
                          campo: numero,
                          onChanged: (newValue) {
                            numero = newValue;
                          },
                        ),
                ),

                SizedBox(
                  width: 95,
                  height: 45,
                  child: TextFieldPadrao(
                          label: "UF",
                          campo: uf,
                          onChanged: (newValue) {
                            uf = newValue;
                          },
                        ),
                ),
              ],),

              const SizedBox(height: 20),

              TextFieldPadrao(
                label: "Endereço",
                campo: endereco,
                onChanged: (newValue) {
                  endereco = newValue;
                },
              ),

              const SizedBox(height: 20),

              TextFieldPadrao(
                label: "Bairro",
                campo: bairro,
                onChanged: (newValue) {
                  bairro = newValue;
                },
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 180,
                child:ElevatedButtonPadrao(texto: "CADASTRAR", onPressed: (){Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => usuarioCadastradoSucesso())
                      );
                })
              )
         
            ],
          ),
        ),
      ),
    );
  }
}

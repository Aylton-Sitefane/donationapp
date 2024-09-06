import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/views/intro/login/login_screen.dart';
import 'package:donationapp/views/intro/register/complement_info.dart';
import 'package:donationapp/views/widgets/costum_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String selecionado = 'Cliente';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: SvgPicture.asset(
            AppVectors.donateHeart,
            height: 60,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 190,
              ),
              if (selecionado == 'Cliente')
                const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Apelido',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              else
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome da instituição',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Gmail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'Digite o endereço G-mail',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'Digite sua password',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Celular',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'ex: 258 86...',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 60,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                selecionado = 'Cliente';
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: selecionado == 'Cliente'
                                  ? AppColor.primaryColor
                                  : null,
                              side: const BorderSide(
                                  color: AppColor.primaryColor),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Cliente',
                                  style: TextStyle(
                                    color: selecionado == 'Cliente'
                                        ? Colors.white
                                        : AppColor.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.person_pin,
                                  color: AppColor.appbarColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 60,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                selecionado = 'Instituição';
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: selecionado == 'Instituição'
                                  ? AppColor.primaryColor
                                  : null,
                              side: const BorderSide(
                                  color: AppColor.primaryColor),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Instituição',
                                  style: TextStyle(
                                    color: selecionado == 'Instituição'
                                        ? Colors.white
                                        : AppColor.primaryColor,
                                  ),
                                ),
                                const Icon(
                                  Icons.church_outlined,
                                  color: AppColor.appbarColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55.0, right: 55),
                      child: CostumButton(
                        title: 'Cadastrar',color: Colors.white,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ComplementInfo(),),);
                        },
                        height: 70,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text('Fazer login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}

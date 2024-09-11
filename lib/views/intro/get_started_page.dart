import 'package:donationapp/core/config/assets/app_images.dart';
import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/core/config/theme/provider/theme_provider.dart';
import 'package:donationapp/views/intro/login/login_screen.dart';
import 'package:donationapp/views/intro/register/register_screen.dart';
import 'package:donationapp/views/widgets/costum_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {

  bool lightmode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                AppImages.introImage,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Ajuda a salvar uma vida!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Escolha o tema',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  SvgPicture.asset(
                    AppVectors.lightMode,
                    color: AppColor.primaryColor,
                  ),
                  Consumer<ThemeProvider>(
                    builder: (context, ThemeProvider provider, child) {
                      return Switch(
                        activeColor: AppColor.primaryColor,
                        value: provider.isDark,
                        onChanged: (value)=> provider.changeTheme()
                      );
                    }
                  ),
                  SvgPicture.asset(
                    AppVectors.darkMode,
                    color:AppColor.primaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 48),
                child: CostumButton(
                  height: 60,
                  title: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Ou'),
              const Text('Cadastre-se como:'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130,
                    height: 70,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),),);
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Doador",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 130,
                    height: 70,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),),);
                      },
                      style: OutlinedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14))),
                      child: const Text(
                        "Paciente",
                        style: TextStyle( color: AppColor.lightBackground),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}

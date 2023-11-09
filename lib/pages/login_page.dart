import 'package:church_app/pages/pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image

              // text
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome to God church',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //Email textfield
              MyTextfield(
                controller: emailTextController,
                hintText: 'Email',
                obscureText: false,
              ),

              //Password textfield
              const SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: passwordTextController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),
              //Forget password ?
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Forget password ?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              //Sign In Button
              MyButton(
                onTap: () {},
                text: 'Sign In',
              ),

              const SizedBox(
                height: 10,
              ),

              //don't have an account , Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?  ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      ' Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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

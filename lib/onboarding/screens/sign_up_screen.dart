import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:medicare/onboarding/screens/login_doctor_screen.dart';
// import 'package:medicare/onboarding/screens/login_screen.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool statePage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: statePage
          ? SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/icon.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Inscrivez-vous',
                        style: Theme.of(
                          context,
                        ).textTheme.displayLarge?.copyWith(fontSize: 30),
                      ),
                      SizedBox(height: 50),
                      CustomTextFormField(
                        controller: _nameController,
                        hintText: "Nom complet",
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        controller: _emailController,
                        hintText: "Email",
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        controller: _passwordController,
                        hintText: "Mot de passe",
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        controller: _passwordController,
                        hintText: "Confirmer votre mot de passe",
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      SizedBox(height: 20),
                      CustomElevatedButton(
                        text: "S'inscrire",
                        onPressed: () {
                          context.push('/home');
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Avez-vous déjà un compte ?",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                statePage = false;
                              });
                            },
                            child: Text(
                              "Se connecter",
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/icon.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Se connecter',
                        style: Theme.of(
                          context,
                        ).textTheme.displayLarge?.copyWith(fontSize: 30),
                      ),
                      SizedBox(height: 50),
                      CustomTextFormField(
                        controller: _emailController,
                        hintText: "Email",
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        controller: _passwordController,
                        hintText: "Mot de passe",
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      SizedBox(height: 20),
                      CustomElevatedButton(
                        text: "Valider",
                        onPressed: () {
                          context.push('/home');
                        },
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (_) => ForgotPassword()),
                          // );

                          // Navigator.pushNamed(context, '/forgot_password');

                          context.push('/forgot_password');
                        },
                        child: Text("Mot de passe oublié ?"),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Vous n'avez pas de compte ?",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                statePage = true;
                              });
                            },
                            child: Text(
                              "S'inscrire",
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   // final _nameController = TextEditingController();
//   // final _emailController = TextEditingController();
//   // final _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   // final _emailController = TextEditingController();
//   // final _passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//     // Center(
//     //   child: Column(
//     //     mainAxisSize: MainAxisSize.min,
//     //     children: [
//     //       Text('Se connecter', style: TextStyle(
//     //         fontSize: 40, fontWeight: FontWeight.bold
//     //         ),
//     //         ),

//     //       SizedBox(height: 20),
//     //       CustomTextFormField(
//     //         controller: emailController,
//     //         hintText: "Email",
//     //       ),
//     //       SizedBox(height: 20),
//     //       CustomTextFormField(
//     //         controller: passwordController,
//     //         hintText: "Password",
//     //       ),
//     //       SizedBox(height: 20),
//     //       CustomElevatedButton(text: "Se connecter",),
//     //       SizedBox(height: 20),
//     //       TextButton(onPressed: (){}, child: Text("Mot de passe oublié ?"))
//     //     ],
//     //   ),
//     // ),
//   }
// }

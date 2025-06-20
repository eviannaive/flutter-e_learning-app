import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/get_core.dart';
import 'package:e_learning/views/widgets/common/custom_button.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:e_learning/routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formkey.currentState!.validate()) {
      Get.offAllNamed(AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor.withOpacity(0.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
              child: const Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.school, size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'Wellcome Back!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Form(child: Column(
                    children: [
                      CustomTextField(
                        labelText: 'Email',
                        prefixIcon: Icons.email_outlined,
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: FormValidator.validateEmail,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Password',
                        prefixIcon: Icons.lock_outline,
                        controller: _passwordController,
                        obscureText: true,
                        validator: FormValidator.validatePassword,
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Get.toNamed(AppRoutes.forgotPassword),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      CustomButton(
                        text: 'Login',
                        onPressed: _handleLogin,
                      ),

                      const SizedBox(height: 20),



                    ]
                  ))





                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey.shade300)),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or continue with"),
                      ),
                      Expanded(child: Divider(color: Colors.grey.shade300)),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _socialLoginButton(
                        icon: Icons.g_mobiledata,
                        onPressed: () {},
                      ),
                      _socialLoginButton(
                        icon: Icons.facebook,
                        onPressed: () {},
                      ),
                      _socialLoginButton(icon: Icons.apple, onPressed: () {}),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () => Get.toNamed(AppRoutes.register),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialLoginButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return CustomButton(
      icon: icon,
      isFullWidth: false,
      height: 50,
      text: '',
      onPressed: onPressed,
      isOutlined: true,
    );
  }
}

import 'package:e_learning/core/utils/validators.dart';
import 'package:e_learning/views/widgets/common/custom_button.dart';
import 'package:e_learning/views/widgets/common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _handleResetPassword() {
    if (_formkey.currentState!.validate()) {
      Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.mark_email_read_outlined,
                size: 60,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              const Text(
                'Check your email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'We have sent password recovery instructions to your email.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              CustomButton(text: 'OK', onPressed: () => Get.back(), height: 55),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Enter your email address to reset your password.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Form(
              key: _formkey,
              child: CustomTextfield(
                label: 'Email',
                prefixIcon: Icons.email_outlined,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: FormValidator.validateEmail,
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Reset Password',
              onPressed: _handleResetPassword,
            ),
          ],
        ),
      ),
    );
  }
}

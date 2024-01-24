import 'package:flutter/material.dart';
import 'package:message_app/pages/registor_page.dart';
import 'package:message_app/widgets/input_box_%20deco.dart';

class loginPage extends StatelessWidget {
  
  final TextEditingController _emialController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           const Icon(
            Icons.message,
            size: 60,
            color: Colors.black
            ),
           const SizedBox(height: 40),
           TextFieldDeco(
            hintTextDeco: 'User Name',
            privateText: false,
            idInfo: _emialController,
           ),
           const SizedBox(height: 8),
           TextFieldDeco(
            hintTextDeco: 'Password',
            privateText: true,
            idInfo: _pwController,
           ),
           const SizedBox(height: 12),
           GestureDetector(
            onTap: () {
              //Registor();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
               color: Theme.of(context).colorScheme.inversePrimary,
               borderRadius: BorderRadius.circular(5)
              ),
              child: Text('Sign Up', 
              style: TextStyle(color: Theme.of(context).colorScheme.surfaceTint)),
            )
           ),
           const SizedBox(height: 5),
           GestureDetector(
            onTap: () {
              //RecoverPassword();
            },
            child: Text('Forgot Password?', 
            style: TextStyle(color: Theme.of(context).colorScheme.surfaceTint))
           ),
        ],
      )
    );
  }
}
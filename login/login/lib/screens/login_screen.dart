import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final passwordRegExp = RegExp(r'^(?=.*[A-Z])(?=.*[!@#\$&*~]).{8,}$');
  final emailRegExp = RegExp(r'^[^@]+@[^@]+\.(edu\.hn)$');

  void _login() {
    if (_formKey.currentState!.validate()) {
      // ignore: unnecessary_null_comparison
      if (_emailController.text.isNotEmpty && emailRegExp.hasMatch(_emailController.text)) {
        Navigator.pushReplacementNamed(context, '/home', arguments: _emailController.text);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Credenciales Inválidas'))
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar Sesión'), backgroundColor: Color.fromARGB(255, 231, 195, 255), ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Correo'),
                validator: (value) {
                  if (value == null || !value.contains('@') || !value.endsWith('.edu.hn')) {
                    return 'Ingrese un correo institucional válido!';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Ingrese una contraseña válida';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: _login, child: const Text('Iniciar Sesión')),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Registrarse'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

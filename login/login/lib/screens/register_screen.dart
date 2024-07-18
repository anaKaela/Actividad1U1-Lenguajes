import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final emailRegExp = RegExp(r'^[^@]+@[^@]+\.(edu\.hn)$');

  void _register() {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text != _confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Contraseña no coincide'))
        );
      

      } 
      // ignore: avoid_print
      print(' Nombre: ${_nameController.text} \n Correo: ${_emailController.text} \n Teléfono: ${_phoneController.text} \n Contraseña: ${_passwordController.text} \n Confirmación de Contraseña: ${_confirmPasswordController.text}');
      Navigator.pop(context);  
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrarse'), backgroundColor: Color.fromARGB(255, 255, 161, 205),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.length < 3 || value.length > 10) {
                    return 'nombre debe ser de 3 a 10 letras';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Correo'),
                validator: (value) {
                  if (value == null || !emailRegExp.hasMatch(value)) {
                    return 'Ingrese un correo válido';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Teléfono'),
                validator: (value) {
                  if (value == null || value.length != 8 || (value[0] != '3' && value[0] != '9')) {
                    return 'Ingrese un número válido';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 8 || !RegExp(r'(?=.*[A-Z])(?=.*[!@#\$&*~])').hasMatch(value)) {
                    return 'Contraseña debe ser de 8 caracteres, una letra mayúscula y un caracter especial ';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: const InputDecoration(labelText: 'Confirmar Contraseña'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value != _passwordController.text) {
                    return 'Contraseña no coincide';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: _register, child: const Text('Registrarse'))
            ],
          ),
        ),
      ),
    );
  }
}

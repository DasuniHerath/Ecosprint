import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vehicle_emission/utils/global.colors.dart';
import 'package:vehicle_emission/widgets/button.global.dart';
import 'package:vehicle_emission/widgets/text.form.global.dart';
import 'package:vehicle_emission/view/Register.view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _vehicletypeController = TextEditingController();
  final TextEditingController _vehiclenumberController =
      TextEditingController();
  bool _isLoginForm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _isLoginForm ? 'Login' : 'Sign Up',
          style: TextStyle(
            color: GlobalColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _isLoginForm ? SizedBox.shrink() : _buildVehicletypeField(),
            _isLoginForm ? SizedBox.shrink() : _buildVehiclenumberField(),
            _isLoginForm ? SizedBox.shrink() : _buildUsernameField(),
            _buildEmailField(),
            _buildPasswordField(),
            _buildSubmitButton(),
            _buildToggleLoginSignUpButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildVehicletypeField() {
    return TextField(
      controller: _vehicletypeController,
      decoration: InputDecoration(labelText: 'Vehicle Type'),
    );
  }

  Widget _buildVehiclenumberField() {
    return TextField(
      controller: _vehiclenumberController,
      decoration: InputDecoration(labelText: 'Vehicle Number'),
    );
  }

  Widget _buildUsernameField() {
    return TextField(
      controller: _usernameController,
      decoration: InputDecoration(labelText: 'Ownername'),
    );
  }

  Widget _buildEmailField() {
    return TextField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(labelText: 'Email'),
    );
  }

  Widget _buildPasswordField() {
    return TextField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        onPressed: _submitForm,
        child: Text(
          _isLoginForm ? 'Login' : 'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: GlobalColors.mainColor,
        ),
      ),
    );
  }

  Widget _buildToggleLoginSignUpButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          _isLoginForm = !_isLoginForm;
        });
      },
      child: Text(
        _isLoginForm
            ? 'Don\'t have an account? Sign Up'
            : 'Already have an account? Log In',
        style: TextStyle(color: GlobalColors.mainColor),
      ),
    );
  }

  void _submitForm() {
    // Perform login or sign up logic here
    String email = _emailController.text;
    String password = _passwordController.text;
    String username = _usernameController.text;

    // Add your authentication logic here
    if (_isLoginForm) {
      // Perform login
      print('Logging in with email: $email, password: $password');
      _emailController.clear();
      _passwordController.clear();
    } else {
      // Perform sign up
      print(
          'Signing up with username: $username, email: $email, password: $password');
      _vehicletypeController.clear();
      _vehiclenumberController.clear();
      _emailController.clear();
      _passwordController.clear();
      _usernameController.clear();
    }
    // Navigate to home page after submitting details
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => registerView()),
    );
  }
}

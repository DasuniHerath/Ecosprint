import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_emission/firebase_options.dart';
import 'package:vehicle_emission/view/vehicleEmission.view.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'firebase_options.dart';
// Import the generated file
import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter_fire_cli/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: vehicleEmissionView(),
    );
  }
}

// class SignInSignUpPage extends StatefulWidget {
//   const SignInSignUpPage({super.key});

//   @override
//   _SignInSignUpPageState createState() => _SignInSignUpPageState();
// }

// class _SignInSignUpPageState extends State<SignInSignUpPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign In/Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             TextField(
//               controller: _passwordController,
//               decoration: const InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Perform sign in logic here
//                     String email = _emailController.text;
//                     String password = _passwordController.text;
//                     // Add your sign in authentication logic
//                     print('Sign In: $email, $password');
//                   },
//                   child: const Text('Sign In'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Perform sign up logic here
//                     String email = _emailController.text;
//                     String password = _passwordController.text;
//                     // Add your sign up authentication logic
//                     print('Sign Up: $email, $password');
//                   },
//                   child: const Text('Sign Up'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

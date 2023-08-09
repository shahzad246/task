import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _message = '';

  void _login() {
    // Simulate server authentication
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'user' && password == 'password') {
      setState(() {
        _message = 'Login successful!';
      });
    } else {
      setState(() {
        _message = 'Login failed. Please try again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
        child:
         SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 padding: const EdgeInsets.all(16.0),
                 height: 50,
                   width:70 ,
                   color: Colors.lightBlue,
                   child: Icon(Icons.arrow_back_ios,
                     size: 20,
                     color: Colors.blue,
                   )
               ),
               SizedBox(
                 height: 5,
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Hello Again!',
                      style:TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ) ,
                     ),
                     Text('Welcome',
                       style:TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.w600,
                         color: Colors.blue,
                       ) ,
                     ),
                     Text('Back',
                       style:TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.w600,
                         color: Colors.blue,
                       ) ,
                     ),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(30.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Container(
                          height: 50,
                          width: 300,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.white,
                       ),
                       child: TextField(
                         controller: _usernameController,
                         decoration: InputDecoration(labelText: 'Email'),
                       ),
                     ),
                     SizedBox(
                      height: 10,
                     ),
                     Container(
                       height: 50,
                       width: 300,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.white,
                       ),
                       child: TextField(
                         controller: _passwordController,
                         decoration: InputDecoration(labelText: 'Password'),
                         obscureText: true,
                       ),
                     ),
                     SizedBox(height: 20),
                     Container(
                       height: 50,
                       width: 300,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.blue,
                       ),
                       child: ElevatedButton(
                         onPressed: _login,
                         child: Text('Sign in',
                           style: TextStyle(
                             fontWeight: FontWeight.w700,
                           ),
                             ),
                       ),
                     ),
                     SizedBox(height: 20),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Forget Your Password',
                           style: TextStyle(
                             color: Colors.grey,
                           ),
                         ),
                         Text('Sign up',
                           style: TextStyle(
                             color: Colors.grey,
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
        ),
    ),

    );
  }
}
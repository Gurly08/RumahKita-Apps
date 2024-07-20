import 'package:flutter/material.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';
import 'package:rumakita_app2/presentation/page/home.dart';
import 'package:rumakita_app2/presentation/page/signup.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  // ignore: non_constant_identifier_names
  bool _ObsecureText =true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkblue,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/wlplogin.png'),
                      const SizedBox(height: 8),
                      Text('Login',style: boldwhitetext.copyWith(fontSize: 22),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 45,
                  right: 10,
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Email",
                      textAlign: TextAlign.left,
                      style: regularwhitetext.copyWith(fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Contoh: budi@gmail.com',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    Text(
                      "Password",
                      textAlign: TextAlign.left,
                      style: regularwhitetext.copyWith(fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukan password',
                          filled: false,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_ObsecureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _ObsecureText = !_ObsecureText;
                              });
                            },
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        obscureText: _ObsecureText,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          elevation: 4,
                          shadowColor: Colors.black,
                          backgroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(45)),
                      child: Text(
                        "Masuk",
                        textAlign: TextAlign.center,
                        style: semiboldPURPLETextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Apakah kamu sudah memiliki akun Rumah Kita?",
                          textAlign: TextAlign.center,
                          style: regularwhitetext.copyWith(fontSize: 8),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: Text(
                            "Daftar",
                            textAlign: TextAlign.center,
                            style: regularwhitetext.copyWith(fontSize: 9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
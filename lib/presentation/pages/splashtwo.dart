import 'package:flutter/material.dart';
import 'package:todo_list/presentation/pages/login.dart';
import 'package:todo_list/presentation/pages/signup.dart';
import 'package:todo_list/presentation/widget/theme.dart';

class Splashtwo extends StatelessWidget {
  const Splashtwo({super.key});

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
                  borderRadius:  BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset('assets/images/splashwlp.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 45,
                  right: 10,
                  left: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Gerbang partisipasi aktif dalam pelayanan publik dan kegiatan masyarakat.  mengajukan surat dan mendapatkan informasi kegiatan masyarakat secara online, memperkuat hubungan antara pemerintah dan warga.',
                      style: mediumWhiteTextStyle.copyWith(fontSize: 12),
                    ),

                    const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
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
                            "Apakah kamu sudah memiliki akun ExporCargo?",
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
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/presentation/pages/login.dart';
import 'package:todo_list/presentation/widget/theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  String?
      valueChoose; // memperbaiki nama variabel yang dipilih dan membuatnya menjadi nullable
  List<String> listItem = ['Kabupaten 1', 'Kabupaten 2', 'Kabupaten 3'];
  Color? lakiLakiColor = Colors.white;
  Color? perempuanColor = Colors.white;

  void selectLakiLaki() {
    setState(() {
      lakiLakiColor = Colors.blue[300];
      perempuanColor = Colors.white;
    });
  }

  void selectPerempuan() {
    setState(() {
      perempuanColor = Colors.blue[300];
      lakiLakiColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: darkblue,
        body: Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 45, bottom: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Daftar',
                      textAlign: TextAlign.start,
                      style: semiboldwhitetext.copyWith(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Yuk daftar dulu sebelum menggunakan aplikasi RumahKita',
                  textAlign: TextAlign.start,
                  style: semiboldwhitetext.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 18),
                Text(
                  "Nama Lengkap",
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
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Contoh: Budi Tabuti',
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
                        offset:
                            const Offset(0, 2), // changes position of shadow
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
                  "Alamat",
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
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukan alamat lengkap',
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
                  "Domisili",
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
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: const Text('Pilih Domisili'),
                      dropdownColor: Colors.blue[100],
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      isExpanded: true,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          // ignore: unnecessary_cast
                          valueChoose = newValue as String?;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                Text(
                  "Umur",
                  textAlign: TextAlign.left,
                  style: regularwhitetext.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 12),
                // ignore: avoid_unnecessary_containers
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Umur',
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
                  "Jenis Kelamin",
                  textAlign: TextAlign.left,
                  style: regularwhitetext.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    GestureDetector(
                      onTap: selectLakiLaki,
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: lakiLakiColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            "Laki-laki",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: selectPerempuan,
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: perempuanColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            "Perempuan",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

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
                        offset:
                            const Offset(0, 2), // changes position of shadow
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
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    obscureText: _obscureText,
                  ),
                ),

                const SizedBox(height: 25),

                AnimatedButton(
                    text: "Daftar",buttonTextStyle: semiboldwhitetext.copyWith(fontSize: 18),
                    color: Colors.teal,
                    pressEvent: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.topSlide,
                        showCloseIcon: true,
                        title: "Success",
                        desc:
                            "Selamat akun kamu sudah terdaftar, harap diingat yah passwordnya >.<",
                        btnOkOnPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                      ).show();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

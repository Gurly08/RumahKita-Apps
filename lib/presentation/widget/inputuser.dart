import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
<<<<<<< HEAD
import 'package:intl/intl.dart'; 
import 'package:rumakita_app2/data/models/pelayanansurat_models.dart';
import 'package:rumakita_app2/presentation/page/home.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';

=======
import 'package:intl/intl.dart'; // Pastikan Anda mengimpor intl untuk formatter
import 'package:todo_list/data/models/pelayanansurat_models.dart';
import 'package:todo_list/presentation/pages/home.dart';
import 'package:todo_list/presentation/widget/theme.dart';
>>>>>>> 7cb3adbe34f0c90e7e8ba986e6d46a8f87dd4066

class InputLayanansurat extends StatefulWidget {
  const InputLayanansurat({required this.selectedSurat, super.key});
  final Surat selectedSurat;

  @override
  State<InputLayanansurat> createState() => _InputLayanansuratState();
}

class _InputLayanansuratState extends State<InputLayanansurat> {
  double containerHeight = 60.0;
  double containerWidth = double.infinity;

  DateTime? _selectedDate;
  final DateFormat formatter =
      DateFormat('dd/MM/yyyy'); // Inisialisasi formatter

  void _presentStartDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 10, now.month, now.day);
    final lastDate = DateTime(now.year + 5, now.month, now.day);
    final pickDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _selectedDate = pickDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.selectedSurat.name,
            style: semibolddeepblueextStyle.copyWith(fontSize: 14)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: deepblueColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.infoReverse,
                animType: AnimType.topSlide,
                showCloseIcon: true,
                title: "Info",
                desc:"SKTM: Doc1(KK), Doc2(akte), Doc3(Poto depan rumah)\n SPD: Doc1(KK), Doc2(KTP), Doc3(Pengantar RT sebelumnya)\n SKK: Doc1(), Doc2(), Doc3()",
                btnOkOnPress: () {},
              ).show();
            },
            icon: Icon(Icons.info_outline_rounded, color: deepblueColor),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 185,
              width: double.infinity,
              color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/yuni.png'),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Hallo...\nSilahkan isi data kamu untuk melengkapi pengajuan surat!',
                        style: mediumWhiteTextStyle.copyWith(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                //input data
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Nama'),
                  const SizedBox(height: 8),
                  buildTextField('Masukan nama lengkap', TextInputType.name),
                  const SizedBox(height: 12),
                  const Text('Email'),
                  const SizedBox(height: 8),
                  buildTextField('Masukan email', TextInputType.emailAddress),
                  const SizedBox(height: 12),
                  const Text('Alamat Lengkap'),
                  const SizedBox(height: 8),
                  buildTextField(
                      'Alamat domisili sekarang', TextInputType.streetAddress),
                  const SizedBox(height: 12),
                  const Text('Tujuan'),
                  const SizedBox(height: 8),
                  buildTextField('Tujuan pengajuan surat', TextInputType.text,
                      maxLength: 150),
                  const SizedBox(height: 12),
                  const Text('Tanggal Pembuatan'),
                  const SizedBox(height: 8),
                  buildDatePicker(),
                  const SizedBox(height: 12),
                  const Text('Dokumen 1'),
                  const SizedBox(height: 8),
                  buildUploadButton('Upload dokumen kamu'),
                  const SizedBox(height: 12),
                  const Text('Dokumen 2'),
                  const SizedBox(height: 8),
                  buildUploadButton('Upload dokumen kamu'),
                  const SizedBox(height: 12),
                  const Text('Dokumen 3'),
                  const SizedBox(height: 8),
                  buildUploadButton('Upload dokumen kamu'),
                  //input data
                  const SizedBox(height: 20),
                  AnimatedButton(
                      text: "Buat",
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
                                  builder: (context) => const Home()),
                            );
                          },
                        ).show();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  //decoration textfield atau container input data
  Widget buildTextField(String hintText, TextInputType inputType,
      {int? maxLength}) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: TextField(
        keyboardType: inputType,
        maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  //decoration container tanggal
  Widget buildDatePicker() {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _selectedDate == null
                ? 'No Date Selected'
                : formatter.format(_selectedDate!),
          ),
          IconButton(
            onPressed: _presentStartDatePicker,
            icon: const Icon(Icons.calendar_month),
          ),
        ],
      ),
    );
  }

  //decoration tombol buat/upload
  Widget buildUploadButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: const Size(50, 45),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          const SizedBox(width: 10),
          const Icon(Icons.file_present_outlined),
        ],
      ),
    );
  }
}

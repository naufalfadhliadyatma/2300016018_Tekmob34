import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amajon Store',
      theme: ThemeData(),
      home: const ECommerceScreen(),
    );
  }
}

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amajon Store',
          style: GoogleFonts.corben(
            color: const Color.fromARGB(255, 244, 240, 219),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 4, 50, 91),
      ),
      // =======Dibawah adalah bagian Bottom navigation=======
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 223, 213, 199),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          ]),
      body: SingleChildScrollView(
        //menggunakan SingleChildScrollView biar bisa scroll
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Banner Promo
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 232, 207),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                '!! PROMO SPESIAL HARI INI !!',
                textAlign: TextAlign.center,
                style: GoogleFonts.crimsonPro(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),

            // Produk 1
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(
                  //mengatur padding pake EdgeInsets.only
                  left: 24.0,
                  top: 20.0,
                  right: 16.0,
                  bottom: 12.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 162, 191, 204),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sepatu Running',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 18, 44, 79),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4.0),
                      Text('4.8 (320 ulasan)'),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 750.000',
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 44, 73),
                          fontSize: 16.0,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Beli',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: const [
                      Icon(Icons.local_shipping, size: 16, color: Colors.grey),
                      SizedBox(width: 4.0),
                      Text('Estimasi pengiriman 2-3 hari'),
                    ],
                  )
                ],
              ),
            ),

            // Produk 2
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 24.0,
                  right: 16.0,
                  bottom: 16.0), //mengatur padding pake EdgeInsets.only
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 125, 164, 209),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Tas Ransel',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 18, 44, 79),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4.0),
                      Text('4.6 (250 ulasan)',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 350.000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Beli',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: const [
                      Icon(Icons.local_shipping,
                          size: 16, color: Colors.white70),
                      SizedBox(width: 4.0),
                      Text('Estimasi pengiriman 3-5 hari',
                          style: TextStyle(color: Colors.white70)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(28.0),
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 4, 50, 91),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Dapatkan Penawaran Terbaik untuk Sepatu & Ransel Premium!\nBelanja Sekarang dan Tampil Lebih Percaya Diri!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bowlbyOneSc(
                      fontSize: 18.0,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.discount, color: Colors.white),
                      Text('Gratis Ongkir Seluruh Indonesia',
                          style: TextStyle(color: Colors.white)),
                      Icon(Icons.local_shipping, color: Colors.white),
                    ],
                  )
                ],
              ),
            ),

            // Kategori
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.shopping_bag, color: Colors.blue),
                      SizedBox(height: 8.0),
                      Text('Pakaian'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.watch, color: Colors.blue),
                      SizedBox(height: 8.0),
                      Text('Aksesoris')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.devices, color: Colors.blue),
                      SizedBox(height: 8.0),
                      Text('Elektronik'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 20, 234),
        foregroundColor: Colors.white,
        title: const Text(
          'Nama Produk',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Center(
                child: SizedBox(
                  width: 350,
                  height: 250,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/hotel.jpg'))),
                  ),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Blue Lagoons',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Row(
                  children: [Icon(Icons.star), Text('Rating')],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price', style: TextStyle(fontSize: 28)),
                    Text('Rp 500.000/night', style: TextStyle(fontSize: 24)),
                  ],
                ),
                
                SizedBox(
                    width: 100,
                    height: 50,
                    child: OutlinedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                const WidgetStatePropertyAll(Color.fromARGB(255, 28, 28, 225)),
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Booking Berhasil!'),
                            backgroundColor: Colors.green,
                          ));
                        },
                        child: const Text('Buy')))
              ],
            )
          ],
        ),
      ),
    );
  }
}

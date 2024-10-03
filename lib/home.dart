import 'package:flutter/material.dart';
import 'package:kuis_mobile/detail.dart';
import 'package:kuis_mobile/profil.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 17, 37, 255),
          title: Row(
            children: [
              const Spacer(),
              const Text('BlueDoorz'),
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProfilePage(username: username)));
                  },
                  child: const Icon(Icons.person),
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: SizedBox(
                height: 180,
                child: ListView(
                  physics: const PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    // item 1
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: 388,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/hotel.png'),
                          )),
                        ),
                      ),
                    ),
                    // item 2
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: 388,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/hotel.jpg'),
                          )),
                        ),
                      ),
                    ),
                    // item 3
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: 388,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/hotel.jpg'),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to BlueDoorz, $username!',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 600,
                    child: GridView.builder(
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.8),
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 100,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/hotel.jpg')),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                'Blue Lagoons',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Rp 500.000/night'),
                                    SizedBox(
                                      width: 72,
                                      child: OutlinedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(255, 51, 29, 216)),
                                              foregroundColor:
                                                  WidgetStatePropertyAll(
                                                      Colors.white)),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const DetailPage()));
                                          },
                                          child: const Text('Buy')),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

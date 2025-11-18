import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const PanduanPengguna()),
                // );
              },
              child: const Text('Panduan'),
            ),

            const SizedBox(height: 16), 

            ElevatedButton(
              onPressed: () {
                      // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const PanduanPengguna()),
                // );
              },
              child: const Text('Setting'),
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                      // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const PanduanPengguna()),
                // );
              },
              child: const Text('Permintaan Saksi'),
            ),
          ],
        ),
      ),
    );
  }
}

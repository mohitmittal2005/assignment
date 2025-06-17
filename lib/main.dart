import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ContactProfilePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact template"),
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/my-pic.jpg"),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Mohit Mittal",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Software Engineer",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text("8290449321"),
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text("mohitmittal053@gmail.com"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}